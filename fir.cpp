#include "fir.h"

static inline std::string Int2Str(int num){
	stringstream ss;
	ss << num;
	return ss.str();
}

static inline int Str2Int(std::string str){
	int num;
	stringstream ss(str);
	ss >> num;
	return num;
}

static inline bool IsEven(vector<int> coeff){
	int len = coeff.size();
	int flag = len & 1;
	if (flag != 0)
		return false;
	else
		return true;
}

static vector<string> VecStrAssign(int down, int up){
	vector<string> ret;
	for (int i = down; i <= up; ++i)
	{
		string tmp = "coeff" + Int2Str(i);
		ret.push_back(tmp);
	}		
	return ret;
}

static vector<int> VecNumAssign(const vector<int> &vec, int down, int up){
	vector<int> ret;
	int tmp = 0;
	for (int i = down; i <= up; ++i)
	{
		tmp = vec[i];
		ret.push_back(tmp);
	}
	return ret;
}

static int SumWidth(const vector<int> &vec){

	double positive = 0;
	double negative = 0;
	for (int i = 0; i < vec.size(); ++i){
		if (vec[i] > 0)
			positive += vec[i];
		else
			negative += vec[i];
	}
	negative = -negative;

	double max = 0;
	if (positive > negative)
		max = positive;
	else
		max = negative;

	double len = log(max) / log(2);
	int len_lower = floor(len);
	
	return len_lower + 2; //one bit for sign

	/*
	double positive = 0;
	double negative = 0;
	for (int i = 0; i < vec.size(); ++i){
		if (vec[i] > 0)
			positive += vec[i];
		else
			negative += vec[i];
	}

	double pos_len = log(positive) / log(2);
	int pos_len_lower = floor(pos_len);
	int pos = pos_len_lower + 2; //one bit for sign


	negative = -negative;
	double neg_len = log(negative) / log(2);
	int neg_len_lower = floor(neg_len);
	int neg = (int)neg_len_lower + 2; //one bit for sign

	if (pos > neg)
		return pos;
	else
		return neg;
	*/

}

static string GetCoeff(int addr, const vector<string> &ary_coeff, bool is_neg){
	string str;
	if (addr == 0){
		str += "(0)";
		return str;
	}
		
	
	if (is_neg){
		str += "-(";
	}
	else{
		str += "(";
	}
	
	int addr_length = ary_coeff.size();
	for (int i = 0; i < addr_length; ++i){
		int tmp = (addr >> i) & 1;
		if (tmp == 1){
			str += ary_coeff[i];
			str += "+";
		}
	}
	str = str.substr(0, str.size() - 1);
	str += ")";

	return str;
}

static void PrintCase(ostream &OF, string addr, int addr_width, string out, const vector<string> &ary_coeff, bool IsNeg){	
	OF << "always @(" << addr << ")\n";
	OF << "begin\n";
	OF << "\tcase(" << addr << ")\n";
	int index = pow(2, addr_width);
	for (int i = 0; i < index; ++i){
		OF << "\t" << addr_width << "'d" << i << " : " << out << " = " << GetCoeff(i, ary_coeff, IsNeg) << ";\n";
		}

	OF << "\tdefault :" << out << " = 0;\n";
	OF << "\tendcase\n";
	OF << "end\n";	
}


void GenFir(int taps, vector<int> coeff, int in_width, int out_width, int coeff_width, int table){
	std::ofstream OF;
	string ModuleName = "FIR" + Int2Str(taps);
	OF.open(ModuleName + ".v");

	OF << "module " << ModuleName << "(\n";
	OF << "input					clk,\n";
	OF << "input  signed [" << in_width - 1 << ":0]	filter_in,\n";
	OF << "output signed [" << out_width - 1 << ":0]	filter_out\n";
	OF << ");\n\n";
	
	int unique_coeff = coeff.size()/2;
	if (!IsEven(coeff))
		unique_coeff += 1;
	for (int i = 0; i < unique_coeff; ++i){
		string is_neg;
		if (coeff[i] < 0){
			is_neg += "-";
		}
		OF << "parameter signed [" << coeff_width - 1 << ":0] " << "coeff" << i << " = " << is_neg << coeff_width << "'d" << abs(coeff[i]) << ";\n";
	}

	OF << "\n//wire signed [" << in_width - 1 << ":0] delay0 = filter_in;\n";
	for (int i = 0; i < coeff.size(); ++i){
		OF << "reg signed [" << in_width - 1 << ":0] " << "delay" << i << ";\n";
	}

	OF << "always @(posedge clk)\n";
	OF << "begin\n";
	for (int i = 0; i < coeff.size() ; ++i){
		if (i == 0)
			OF << "\tdelay0 <= filter_in;\n";
		else
			OF << "\tdelay" << i << " <= " << "delay" << i - 1 << ";\n";
	}
	OF << "end\n\n";
	
	if (IsEven(coeff)){
		for (int i = 0; i < unique_coeff; ++i)
			OF << "//wire signed [" << in_width << ":0] add" << i << " = " << "delay" << i << " + " << "delay" << coeff.size() - 1 - i << ";\n";
		for (int i = 0; i < unique_coeff; ++i)
			OF << "reg signed [" << in_width << ":0] add" << i << ";\n";

		for (int i = 0; i < unique_coeff; ++i)
		{
			OF << "always @(posedge clk)\n";
			OF << "begin\n";
			OF << "\tadd" << i << " <= " << "delay" << i << " + " << "delay" << coeff.size() - 1 - i << ";\n";
			OF << "end\n";
		}
			
		
	}
	else{
		for (int i = 0; i < unique_coeff-1; ++i)
			OF << "//wire signed [" << in_width << ":0] add" << i << " = " << "delay" << i << " + " << "delay" << coeff.size() - 1 - i << ";\n";
		OF << "//wire signed [" << in_width << ":0] add" << unique_coeff - 1 << " = " << "{delay" << unique_coeff - 1 << "[" << in_width - 1 << "], delay" << unique_coeff - 1 << "};\n";
		for (int i = 0; i < unique_coeff; ++i)
			OF << "reg signed [" << in_width << ":0] add" << i << ";\n";

		for (int i = 0; i < unique_coeff - 1; ++i){
			OF << "always @(posedge clk)\n";
			OF << "begin\n";
			OF << "\tadd" << i << " <= " << "delay" << i << " + " << "delay" << coeff.size() - 1 - i << ";\n";
			OF << "end\n";
		}
		OF << "always @(posedge clk)\n";
		OF << "begin\n";
		OF << "\tadd" << unique_coeff - 1 << " <= " << "{delay" << unique_coeff - 1 << "[" << in_width - 1 << "], delay" << unique_coeff - 1 << "};\n";
		OF << "end\n";
	}
	//-----------------------------------begin lut table-----------------------------------//
	OF << "\n\n\n";
	OF << "//-----------------------------------begin lut table-----------------------------------//\n";
	int table_num = unique_coeff / table;
	int table_left = unique_coeff % table;
	deque<string> lut_addr_name;
	deque<int> lut_addr_width;
	deque<vector<string> > lut_addr_coeff;
	deque<vector<int> > lut_addr_num;
	deque<string> lut_out;
	deque<string> lut_out_reg;

	//for all lut table input
	for (int i = 0; i <= in_width; ++i){
		//for every bit 
		for (int j = 0; j < table_num; ++j){
			//print lut table input declaration
			OF << "wire [" << table - 1 << ":0] " << "lut_addr" << i << "_" << j << " = {";
			int up = (j + 1)*table - 1;
			int down = j*table;
			for (int k = up; k >= down; --k){
				if (k != down)
					OF << "add" << k << "[" << i << "],";
				else
					OF << "add" << k << "[" << i << "]";
			}
			OF << "};\n";
			//store input message
			string addr_name = "lut_addr" + Int2Str(i) + "_" + Int2Str(j);
			int addr_width = table;
			vector<string> addr_coeff = VecStrAssign(down, up);
			vector<int> addr_num = VecNumAssign(coeff, down, up);
			lut_addr_name.push_back(addr_name);
			lut_addr_width.push_back(addr_width);
			lut_addr_coeff.push_back(addr_coeff);
			lut_addr_num.push_back(addr_num);
			//print lut table output declaration
			string out = "lut" + Int2Str(i) + "_out" + Int2Str(j);
			string out_reg = "lut" + Int2Str(i) + "_" + Int2Str(j);
			lut_out.push_back(out);
			lut_out_reg.push_back(out_reg);
			OF << "reg  [" << SumWidth(addr_num) - 1 << ":0] " << out << ", " << out_reg << ";\n";
		}
		if (table_left > 0){
			//print lut table input declaration
			OF << "wire [" << table_left - 1 << ":0] " << "lut_addr" << i << "_" << table_num << " = {";
			int up = unique_coeff - 1;
			int down = unique_coeff - table_left;
			for (int k = up; k >= down; --k){
				if (k != down)
					OF << "add" << k << "[" << i << "],";
				else
					OF << "add" << k << "[" << i << "]";
			}
			OF << "};\n";
			//store input message
			string addr_name = "lut_addr" + Int2Str(i) + "_" + Int2Str(table_num);
			int addr_width = table_left;
			vector<string> addr_coeff = VecStrAssign(down, up);
			vector<int> addr_num = VecNumAssign(coeff, down, up);
			lut_addr_name.push_back(addr_name);
			lut_addr_width.push_back(addr_width);
			lut_addr_coeff.push_back(addr_coeff);
			lut_addr_num.push_back(addr_num);
			//print lut table output declaration
			string out = "lut" + Int2Str(i) + "_out" + Int2Str(table_num);
			string out_reg = "lut" + Int2Str(i) + "_" + Int2Str(table_num);
			lut_out.push_back(out);
			lut_out_reg.push_back(out_reg);
			OF << "reg  [" << SumWidth(addr_num) - 1 << ":0] " << out << ", " << out_reg << ";\n";
		}
	}
	//print always module
	deque<string> lut_out_backup(lut_out);
	int always_num = lut_out.size();
	int begin_sign = always_num - always_num / in_width;
	for (int i = 0; i < always_num; ++i){
		string addr_name = lut_addr_name.front();
		lut_addr_name.pop_front();
		int addr_width = lut_addr_width.front();
		lut_addr_width.pop_front();
		vector<string> addr_coeff = lut_addr_coeff.front();
		lut_addr_coeff.pop_front();
		string out = lut_out_backup.front();
		lut_out_backup.pop_front();
		bool is_sign = false;
		if (i > begin_sign)
			is_sign = true;
		PrintCase(OF, addr_name, addr_width, out, addr_coeff, is_sign);
	}

	//register lut table output
	OF << "\n\n";
	for (int i = 0; i < always_num; ++i){
		OF << "always @(posedge clk)\n";
		OF << "begin\n";
		string out_reg = lut_out_reg.front();
		string out = lut_out.front();
		OF << "\t" << out_reg << " <= " << out << ";\n";
		lut_out_reg.pop_front();
		lut_out.pop_front();
		OF << "end\n";
	}
	


	OF << "\n\nendmodule\n";
	OF.close();
	
}
