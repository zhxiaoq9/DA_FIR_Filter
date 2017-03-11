#include "fir.h"


int main()
{
	vector<int> coeff6 =  {7567, 20406, 32768, 32768, 20406, 7567 };
	vector<int> coeff10 = {2020, 6589, 15718, 25602, 32768, 32768, 25602, 15718, 6589, 2020};
	vector<int> coeff13 = { 259, 1548, 5206, 12097, 21272, 29454, 32768, 29454, 21272, 12097, 5206, 1548, 259 };
	vector<int> coeff20 = { 0, 6, 60, 343, 1374, 4124, 9624, 17873, 26810, 32768, 32768, 26810, 17873, 9624, 4124, 1374, 343, 60, 6, 0 };	
	vector<int> coeff28 = { 594, 175, -2472, -4154, -1184, 2209, -122, -3176, 831, 4443, -2572, -7504, 8682, 32768,
							32768, 8682, -7504, -2572, 4443, 831, -3176, -122, 2209, -1184, -4154, -2472, 175, 594 };
	vector<int> coeff41 = { 157, 100, -264, -147, 430, 135, -666, -31, 960, -217, -1298, 675, 1648, -1463, -1977, 2841, 2245,
							-5779, -2422, 19057, 32768, 19057, -2422, -5779, 2245, 2841, -1977, -1463, 1648, 675, -1298, -217,
							960, -31, -666, 135, 430, -147, -264, 100, 157 };
	vector<int> coeff61 = { 434, 270, -573, -83, 655, -155, -663, 417, 575, -679, -386, 903, 91, -1055, 298, 1091, -763,
							-975, 1274, 660, -1800, -97, 2298, -817, -2736, 2322, 3075, -5348, -3292, 18414, 32768, 18414,
							-3292, -5348, 3075, 2322, -2736, -817, 2298, -97, -1800, 660, 1274, -975, -763, 1091, 298, 
							-1055, 91, 903, -386, -679, 575, 417, -663, -155, 655, -83, -573, 270, 434 };

	vector<int> coeff119 = { -542, -1589, -1577, -244, 763, 148, -530, -31, 436, -95, -354, 198, 265, -287, -156, 342, 28, -363, 108,
							337, -244, -265, 359, 144, -440, 12, 467, -192, -432, 372, 326, -532, -154, 640, -77, -675, 344, 613, -621,
							-446, 867, 165, -1045, 219, 1109, -693, -1021, 1220, 728, -1768, -173, 2297, -738, -2761, 2253, 3125, -5292,
							-3357, 18355, 32768, 18355, -3357, -5292, 3125, 2253, -2761, -738, 2297, -173, -1768, 728, 1220, -1021, -693,
							1109, 219, -1045, 165, 867, -446, -621, 613, 344, -675, -77,640, -154, -532, 326, 372, -432, -192, 467, 12,
							-440, 144, 359, -265, -244, 337, 108, -363, 28, 342, -156, -287, 265, 198, -354,-95, 436, -31, -530, 148, 763,
							-244, -1577, -1589, -542 };

	vector<int> coeff151 = { -158, -805, -1797, -2222, -1261, 407, 1063, 181, -735, -358, 508, 397, -369, -394, 285, 376, -238, -361, 211, 347, -199, -338,
							194, 328, -200, -324, 210, 323, -226, -326, 242, 327, -265, -331, 291, 336, -320, -343, 351, 346, -392, -355, 432, 361, -479,
							-368, 535, 377, -595, -383, 666, 390, -747, -397, 843, 402, -958, -410, 1096, 413, -1271, -420, 1494, 423, -1795, -427, 2224,
							430, -2892, -433, 4081, 434, -6840, -436, 20576, 32768, 20576, -436, -6840, 434, 4081, -433, -2892, 430, 2224, -427, -1795,
							423, 1494, -420, -1271, 413, 1096, -410, -958, 402, 843, -397, -747, 390, 666, -383, -595, 377, 535, -368, -479, 361, 432,
							-355, -392, 346, 351, -343, -320, 336, 291, -331, -265, 327, 242, -326, -226, 323, 210, -324, -200, 328, 194, -338, -199,
							347, 211, -361, -238, 376, 285, -394, -369, 397, 508, -358, -735, 181, 1063, 407, -1261, -2222, -1797, -805, -158 };

	//GenFir(6, coeff6, 12, 29, 17, 3);
	//GenFir(10, coeff10, 12, 30, 17, 5);
	//GenFir(13, coeff13, 12, 30, 17, 7);
	//GenFir(20, coeff20, 12, 30, 17, 5);
	//GenFir(28, coeff28, 12, 30, 17, 5);
	//GenFir(41, coeff41, 12, 29, 17, 5);
	//GenFir(61, coeff61, 12, 30, 17, 6);
	//GenFir(119, coeff119, 12, 30, 17, 6);
	GenFir(151, coeff151, 12, 30, 17, 5);

	return 0;
}