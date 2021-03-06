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
const int16_t flute_0001[N_WAVEFORM_SAMPLES] PROGMEM = {
  7,
  16,
  25,
  35,
  46,
  57,
  67,
  77,
  86,
  95,
  103,
  110,
  116,
  121,
  125,
  129,
  133,
  137,
  141,
  146,
  151,
  157,
  163,
  168,
  173,
  177,
  181,
  183,
  184,
  185,
  185,
  185,
  185,
  184,
  184,
  184,
  186,
  187,
  189,
  192,
  195,
  197,
  200,
  202,
  204,
  206,
  208,
  210,
  212,
  215,
  219,
  223,
  228,
  233,
  239,
  246,
  254,
  261,
  269,
  276,
  283,
  289,
  295,
  300,
  306,
  311,
  316,
  322,
  327,
  333,
  338,
  344,
  349,
  353,
  358,
  362,
  365,
  367,
  369,
  371,
  372,
  373,
  374,
  375,
  376,
  377,
  380,
  382,
  385,
  389,
  392,
  396,
  399,
  401,
  403,
  404,
  405,
  406,
  406,
  407,
  408,
  410,
  412,
  415,
  418,
  422,
  426,
  431,
  435,
  440,
  445,
  450,
  456,
  461,
  467,
  472,
  477,
  482,
  487,
  492,
  497,
  502,
  507,
  513,
  519,
  525,
  532,
  540,
  548,
  556,
  564,
  573,
  582,
  591,
  600,
  608,
  617,
  625,
  634,
  643,
  652,
  660,
  669,
  676,
  684,
  691,
  698,
  705,
  711,
  718,
  726,
  733,
  741,
  749,
  756,
  763,
  769,
  776,
  781,
  787,
  793,
  799,
  805,
  813,
  820,
  829,
  838,
  846,
  855,
  863,
  872,
  880,
  888,
  896,
  903,
  909,
  916,
  922,
  928,
  935,
  941,
  947,
  954,
  961,
  968,
  975,
  982,
  989,
  995,
  1000,
  1005,
  1009,
  1012,
  1014,
  1016,
  1018,
  1019,
  1021,
  1022,
  1023,
  1024,
  1024,
  1023,
  1021,
  1018,
  1014,
  1010,
  1006,
  1001,
  996,
  990,
  984,
  977,
  970,
  962,
  954,
  946,
  939,
  932,
  926,
  921,
  916,
  911,
  908,
  904,
  901,
  898,
  894,
  891,
  888,
  885,
  881,
  877,
  872,
  868,
  864,
  860,
  857,
  853,
  850,
  847,
  844,
  840,
  835,
  830,
  824,
  817,
  810,
  801,
  793,
  783,
  773,
  763,
  752,
  740,
  728,
  716,
  702,
  687,
  672,
  655,
  638,
  620,
  601,
  582,
  562,
  543,
  523,
  503,
  484,
  464,
  445,
  426,
  408,
  390,
  373,
  356,
  339,
  322,
  306,
  288,
  271,
  254,
  237,
  219,
  201,
  183,
  164,
  146,
  128,
  109,
  91,
  73,
  54,
  37,
  20,
  4,
  -13,
  -28,
  -42,
  -56,
  -69,
  -82,
  -94,
  -105,
  -115,
  -124,
  -133,
  -141,
  -148,
  -155,
  -160,
  -166,
  -171,
  -175,
  -179,
  -183,
  -185,
  -188,
  -189,
  -189,
  -190,
  -189,
  -189,
  -188,
  -188,
  -189,
  -191,
  -194,
  -197,
  -201,
  -205,
  -209,
  -212,
  -215,
  -218,
  -221,
  -223,
  -226,
  -230,
  -233,
  -238,
  -243,
  -248,
  -254,
  -260,
  -267,
  -273,
  -280,
  -288,
  -296,
  -303,
  -312,
  -320,
  -329,
  -337,
  -346,
  -355,
  -364,
  -372,
  -380,
  -387,
  -394,
  -400,
  -405,
  -410,
  -414,
  -417,
  -420,
  -422,
  -424,
  -425,
  -426,
  -426,
  -427,
  -428,
  -430,
  -432,
  -434,
  -436,
  -439,
  -441,
  -444,
  -447,
  -449,
  -452,
  -455,
  -458,
  -462,
  -466,
  -470,
  -474,
  -477,
  -481,
  -484,
  -487,
  -490,
  -494,
  -498,
  -502,
  -506,
  -511,
  -515,
  -520,
  -525,
  -529,
  -533,
  -537,
  -541,
  -545,
  -548,
  -551,
  -555,
  -558,
  -562,
  -566,
  -569,
  -574,
  -578,
  -581,
  -585,
  -588,
  -591,
  -594,
  -598,
  -602,
  -606,
  -612,
  -618,
  -625,
  -632,
  -638,
  -644,
  -650,
  -655,
  -659,
  -664,
  -671,
  -677,
  -685,
  -694,
  -704,
  -714,
  -725,
  -734,
  -743,
  -752,
  -760,
  -767,
  -774,
  -781,
  -788,
  -796,
  -804,
  -813,
  -822,
  -832,
  -842,
  -852,
  -863,
  -872,
  -881,
  -889,
  -897,
  -903,
  -909,
  -914,
  -919,
  -923,
  -926,
  -929,
  -931,
  -932,
  -933,
  -934,
  -934,
  -934,
  -933,
  -933,
  -932,
  -932,
  -932,
  -932,
  -932,
  -933,
  -935,
  -937,
  -939,
  -942,
  -945,
  -948,
  -951,
  -954,
  -958,
  -961,
  -965,
  -969,
  -972,
  -976,
  -980,
  -984,
  -987,
  -990,
  -992,
  -994,
  -995,
  -996,
  -996,
  -996,
  -996,
  -996,
  -995,
  -993,
  -992,
  -990,
  -987,
  -984,
  -980,
  -975,
  -970,
  -964,
  -957,
  -949,
  -940,
  -930,
  -920,
  -910,
  -899,
  -888,
  -877,
  -866,
  -854,
  -843,
  -832,
  -821,
  -811,
  -800,
  -790,
  -780,
  -770,
  -760,
  -751,
  -741,
  -732,
  -722,
  -713,
  -704,
  -695,
  -687,
  -678,
  -670,
  -663,
  -656,
  -649,
  -643,
  -637,
  -630,
  -624,
  -616,
  -609,
  -600,
  -591,
  -582,
  -572,
  -562,
  -551,
  -540,
  -528,
  -516,
  -503,
  -489,
  -474,
  -460,
  -444,
  -429,
  -413,
  -397,
  -381,
  -364,
  -347,
  -329,
  -312,
  -294,
  -275,
  -256,
  -238,
  -218,
  -200,
  -181,
  -163,
  -144,
  -125,
  -108,
  -90,
  -73,
  -57,
  -41,
  -26,
  -13,
  -2
};
