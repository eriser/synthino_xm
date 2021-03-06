/*
  Synthino polyphonic synthesizer
  Copyright (C) 2014-2015 Michael Krumpus

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <avr/pgmspace.h>
#include "waveforms.h"
const int16_t c604_0027[N_WAVEFORM_SAMPLES] PROGMEM = {
  2,
  6,
  9,
  13,
  16,
  20,
  23,
  26,
  30,
  33,
  37,
  40,
  44,
  47,
  51,
  54,
  57,
  61,
  64,
  67,
  71,
  74,
  78,
  81,
  85,
  88,
  92,
  95,
  98,
  102,
  105,
  109,
  112,
  115,
  119,
  122,
  126,
  129,
  133,
  136,
  139,
  143,
  146,
  150,
  153,
  157,
  160,
  163,
  167,
  170,
  174,
  177,
  180,
  184,
  187,
  191,
  194,
  198,
  201,
  205,
  208,
  211,
  215,
  218,
  222,
  225,
  228,
  232,
  235,
  239,
  242,
  246,
  249,
  252,
  256,
  259,
  263,
  266,
  270,
  273,
  276,
  280,
  283,
  287,
  290,
  294,
  297,
  300,
  304,
  307,
  311,
  314,
  317,
  321,
  324,
  328,
  331,
  334,
  338,
  341,
  345,
  348,
  352,
  355,
  359,
  362,
  365,
  369,
  372,
  376,
  379,
  382,
  386,
  389,
  393,
  396,
  400,
  403,
  406,
  410,
  413,
  417,
  420,
  424,
  427,
  430,
  434,
  437,
  441,
  444,
  447,
  451,
  454,
  458,
  461,
  465,
  468,
  472,
  475,
  478,
  482,
  485,
  489,
  492,
  496,
  499,
  502,
  506,
  509,
  513,
  516,
  520,
  523,
  526,
  530,
  533,
  537,
  540,
  543,
  547,
  550,
  554,
  557,
  561,
  564,
  567,
  571,
  574,
  578,
  581,
  585,
  588,
  591,
  595,
  598,
  602,
  605,
  608,
  612,
  615,
  619,
  622,
  626,
  629,
  633,
  636,
  639,
  643,
  646,
  650,
  653,
  656,
  660,
  663,
  667,
  670,
  674,
  677,
  680,
  684,
  687,
  691,
  694,
  697,
  701,
  704,
  708,
  711,
  715,
  718,
  721,
  725,
  728,
  732,
  735,
  739,
  742,
  745,
  749,
  752,
  756,
  759,
  762,
  766,
  769,
  773,
  776,
  780,
  783,
  787,
  790,
  793,
  797,
  800,
  804,
  807,
  811,
  814,
  817,
  821,
  824,
  828,
  831,
  834,
  838,
  841,
  845,
  848,
  852,
  855,
  858,
  862,
  865,
  869,
  872,
  876,
  879,
  882,
  886,
  889,
  893,
  896,
  900,
  903,
  906,
  910,
  913,
  917,
  920,
  923,
  927,
  930,
  934,
  937,
  941,
  944,
  947,
  951,
  954,
  958,
  961,
  965,
  968,
  972,
  975,
  978,
  982,
  985,
  988,
  992,
  995,
  999,
  1002,
  1006,
  1009,
  1013,
  1016,
  1019,
  1023,
  0,
  -1024,
  -1020,
  -1017,
  -1014,
  -1010,
  -1007,
  -1003,
  -1000,
  -997,
  -993,
  -990,
  -986,
  -983,
  -979,
  -976,
  -973,
  -969,
  -966,
  -962,
  -959,
  -955,
  -952,
  -949,
  -945,
  -942,
  -938,
  -935,
  -932,
  -928,
  -925,
  -921,
  -918,
  -914,
  -911,
  -907,
  -904,
  -901,
  -897,
  -894,
  -890,
  -887,
  -884,
  -880,
  -877,
  -873,
  -870,
  -866,
  -863,
  -860,
  -856,
  -853,
  -849,
  -846,
  -842,
  -839,
  -836,
  -832,
  -829,
  -825,
  -822,
  -819,
  -815,
  -812,
  -808,
  -805,
  -801,
  -798,
  -795,
  -791,
  -788,
  -784,
  -781,
  -777,
  -774,
  -771,
  -767,
  -764,
  -760,
  -757,
  -753,
  -750,
  -747,
  -743,
  -740,
  -736,
  -733,
  -730,
  -726,
  -723,
  -719,
  -716,
  -712,
  -709,
  -706,
  -702,
  -699,
  -695,
  -692,
  -688,
  -685,
  -681,
  -678,
  -675,
  -671,
  -668,
  -664,
  -661,
  -658,
  -654,
  -651,
  -647,
  -644,
  -640,
  -637,
  -634,
  -630,
  -627,
  -623,
  -620,
  -617,
  -613,
  -610,
  -606,
  -603,
  -599,
  -596,
  -593,
  -589,
  -586,
  -582,
  -579,
  -575,
  -572,
  -569,
  -565,
  -562,
  -558,
  -555,
  -551,
  -548,
  -545,
  -541,
  -538,
  -534,
  -531,
  -527,
  -524,
  -521,
  -517,
  -514,
  -510,
  -507,
  -504,
  -500,
  -497,
  -493,
  -490,
  -486,
  -483,
  -479,
  -476,
  -473,
  -469,
  -466,
  -462,
  -459,
  -456,
  -452,
  -449,
  -445,
  -442,
  -438,
  -435,
  -432,
  -428,
  -425,
  -421,
  -418,
  -415,
  -411,
  -408,
  -404,
  -401,
  -397,
  -394,
  -391,
  -387,
  -384,
  -380,
  -377,
  -373,
  -370,
  -367,
  -363,
  -360,
  -356,
  -353,
  -349,
  -346,
  -343,
  -339,
  -336,
  -332,
  -329,
  -325,
  -322,
  -319,
  -315,
  -312,
  -308,
  -305,
  -302,
  -298,
  -295,
  -291,
  -288,
  -284,
  -281,
  -278,
  -274,
  -271,
  -267,
  -264,
  -260,
  -257,
  -254,
  -250,
  -247,
  -243,
  -240,
  -236,
  -233,
  -230,
  -226,
  -223,
  -219,
  -216,
  -212,
  -209,
  -206,
  -202,
  -199,
  -195,
  -192,
  -189,
  -185,
  -182,
  -178,
  -175,
  -171,
  -168,
  -165,
  -161,
  -158,
  -154,
  -151,
  -147,
  -144,
  -141,
  -137,
  -134,
  -130,
  -127,
  -123,
  -120,
  -117,
  -113,
  -110,
  -106,
  -103,
  -99,
  -96,
  -93,
  -89,
  -86,
  -82,
  -79,
  -76,
  -72,
  -69,
  -65,
  -62,
  -58,
  -55,
  -52,
  -48,
  -45,
  -41,
  -38,
  -35,
  -31,
  -28,
  -24,
  -21,
  -17,
  -14,
  -10,
  -7,
  -4,
  0
};
