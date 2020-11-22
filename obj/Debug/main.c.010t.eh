
;; Function palavra_reservada (palavra_reservada, funcdef_no=17, decl_uid=4950, cgraph_uid=17, symbol_order=33)

palavra_reservada (char * lex)
{
  int postab;
  int D.5576;

  postab = 0;
  goto <D.4954>;
  <D.4953>:
  _1 = &lista_pal[postab].palavra;
  _2 = strcmp (lex, _1);
  if (_2 == 0) goto <D.5574>; else goto <D.5575>;
  <D.5574>:
  D.5576 = lista_pal[postab].token;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5577>;
  <D.5575>:
  postab = postab + 1;
  <D.4954>:
  _3 = &lista_pal[postab].palavra;
  _4 = strcmp ("fimtabela", _3);
  if (_4 != 0) goto <D.4953>; else goto <D.4955>;
  <D.4955>:
  D.5576 = 1;
  goto <D.5577>;
  <D.5577>:
  return D.5576;
}



;; Function le_token (le_token, funcdef_no=18, decl_uid=4958, cgraph_uid=18, symbol_order=34)

le_token (char * st, char * lex)
{
  char c;
  int posl;
  int fim;
  int estado;
  int D.5596;

  estado = 0;
  fim = 0;
  posl = 0;
  pos.0_1 = pos;
  posColuna = pos.0_1;
  goto <D.4976>;
  <D.4975>:
  pos.1_2 = pos;
  _3 = (sizetype) pos.1_2;
  _4 = st + _3;
  c = *_4;
  posl.2_5 = posl;
  posl = posl.2_5 + 1;
  _6 = (sizetype) posl.2_5;
  _7 = lex + _6;
  *_7 = c;
  switch (estado) <default: <D.5725>, case 0: <D.4964>, case 1: <D.4966>, case 2: <D.4967>, case 3: <D.4968>, case 4: <D.4969>, case 5: <D.4970>, case 6: <D.4971>, case 7: <D.4972>, case 8: <D.4973>, case 9: <D.4974>>
  <D.4964>:
  if (c > 96) goto <D.5582>; else goto <D.5578>;
  <D.5582>:
  if (c <= 122) goto <D.5579>; else goto <D.5578>;
  <D.5578>:
  if (c > 64) goto <D.5583>; else goto <D.5580>;
  <D.5583>:
  if (c <= 90) goto <D.5579>; else goto <D.5580>;
  <D.5580>:
  if (c == 95) goto <D.5579>; else goto <D.5581>;
  <D.5579>:
  pos.3_8 = pos;
  _9 = pos.3_8 + 1;
  pos = _9;
  estado = 1;
  estado_anterior = 0;
  goto <D.4965>;
  <D.5581>:
  if (c > 47) goto <D.5584>; else goto <D.5585>;
  <D.5584>:
  if (c <= 57) goto <D.5586>; else goto <D.5587>;
  <D.5586>:
  if (c == 48) goto <D.5588>; else goto <D.5589>;
  <D.5588>:
  pos.4_10 = pos;
  _11 = pos.4_10 + 1;
  pos = _11;
  estado = 8;
  estado_anterior = 0;
  goto <D.4965>;
  <D.5589>:
  pos.5_12 = pos;
  _13 = pos.5_12 + 1;
  pos = _13;
  estado = 2;
  estado_anterior = 0;
  goto <D.4965>;
  <D.5587>:
  <D.5585>:
  if (c == 46) goto <D.5590>; else goto <D.5591>;
  <D.5590>:
  pos.6_14 = pos;
  _15 = pos.6_14 + 1;
  pos = _15;
  estado = 3;
  estado_anterior = 0;
  goto <D.4965>;
  <D.5591>:
  if (c == 61) goto <D.5592>; else goto <D.5593>;
  <D.5592>:
  pos.7_16 = pos;
  _17 = pos.7_16 + 1;
  pos = _17;
  pos.8_18 = pos;
  _19 = (sizetype) pos.8_18;
  _20 = st + _19;
  c = *_20;
  if (c == 61) goto <D.5594>; else goto <D.5595>;
  <D.5594>:
  posl.9_21 = posl;
  posl = posl.9_21 + 1;
  _22 = (sizetype) posl.9_21;
  _23 = lex + _22;
  *_23 = 61;
  _24 = (sizetype) posl;
  _25 = lex + _24;
  *_25 = 0;
  pos.10_26 = pos;
  _27 = pos.10_26 + 1;
  pos = _27;
  estado_anterior = 0;
  D.5596 = 61;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5595>:
  _28 = (sizetype) posl;
  _29 = lex + _28;
  *_29 = 0;
  D.5596 = 43;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5593>:
  if (c == 33) goto <D.5597>; else goto <D.5598>;
  <D.5597>:
  pos.11_30 = pos;
  _31 = pos.11_30 + 1;
  pos = _31;
  pos.12_32 = pos;
  _33 = (sizetype) pos.12_32;
  _34 = st + _33;
  c = *_34;
  if (c == 61) goto <D.5599>; else goto <D.5600>;
  <D.5599>:
  posl.13_35 = posl;
  posl = posl.13_35 + 1;
  _36 = (sizetype) posl.13_35;
  _37 = lex + _36;
  *_37 = 61;
  _38 = (sizetype) posl;
  _39 = lex + _38;
  *_39 = 0;
  pos.14_40 = pos;
  _41 = pos.14_40 + 1;
  pos = _41;
  estado_anterior = 0;
  D.5596 = 62;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5600>:
  _42 = (sizetype) posl;
  _43 = lex + _42;
  *_43 = 0;
  D.5596 = 63;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5598>:
  if (c == 63) goto <D.5601>; else goto <D.5602>;
  <D.5601>:
  _44 = (sizetype) posl;
  _45 = lex + _44;
  *_45 = 0;
  pos.15_46 = pos;
  _47 = pos.15_46 + 1;
  pos = _47;
  estado_anterior = 0;
  D.5596 = 64;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5602>:
  if (c == 43) goto <D.5603>; else goto <D.5604>;
  <D.5603>:
  pos.16_48 = pos;
  _49 = pos.16_48 + 1;
  pos = _49;
  pos.17_50 = pos;
  _51 = (sizetype) pos.17_50;
  _52 = st + _51;
  c = *_52;
  if (c == 43) goto <D.5605>; else goto <D.5606>;
  <D.5605>:
  posl.18_53 = posl;
  posl = posl.18_53 + 1;
  _54 = (sizetype) posl.18_53;
  _55 = lex + _54;
  *_55 = 43;
  _56 = (sizetype) posl;
  _57 = lex + _56;
  *_57 = 0;
  pos.19_58 = pos;
  _59 = pos.19_58 + 1;
  pos = _59;
  estado_anterior = 0;
  D.5596 = 60;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5606>:
  if (c == 61) goto <D.5607>; else goto <D.5608>;
  <D.5607>:
  posl.20_60 = posl;
  posl = posl.20_60 + 1;
  _61 = (sizetype) posl.20_60;
  _62 = lex + _61;
  *_62 = 61;
  _63 = (sizetype) posl;
  _64 = lex + _63;
  *_64 = 0;
  pos.21_65 = pos;
  _66 = pos.21_65 + 1;
  pos = _66;
  estado_anterior = 0;
  D.5596 = 53;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5608>:
  _67 = (sizetype) posl;
  _68 = lex + _67;
  *_68 = 0;
  D.5596 = 44;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5604>:
  if (c == 45) goto <D.5609>; else goto <D.5610>;
  <D.5609>:
  pos.22_69 = pos;
  _70 = pos.22_69 + 1;
  pos = _70;
  pos.23_71 = pos;
  _72 = (sizetype) pos.23_71;
  _73 = st + _72;
  c = *_73;
  if (c == 45) goto <D.5611>; else goto <D.5612>;
  <D.5611>:
  posl.24_74 = posl;
  posl = posl.24_74 + 1;
  _75 = (sizetype) posl.24_74;
  _76 = lex + _75;
  *_76 = 45;
  _77 = (sizetype) posl;
  _78 = lex + _77;
  *_78 = 0;
  pos.25_79 = pos;
  _80 = pos.25_79 + 1;
  pos = _80;
  estado_anterior = 0;
  D.5596 = 59;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5612>:
  if (c == 61) goto <D.5613>; else goto <D.5614>;
  <D.5613>:
  posl.26_81 = posl;
  posl = posl.26_81 + 1;
  _82 = (sizetype) posl.26_81;
  _83 = lex + _82;
  *_83 = 61;
  _84 = (sizetype) posl;
  _85 = lex + _84;
  *_85 = 0;
  pos.27_86 = pos;
  _87 = pos.27_86 + 1;
  pos = _87;
  estado_anterior = 0;
  D.5596 = 52;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5614>:
  _88 = (sizetype) posl;
  _89 = lex + _88;
  *_89 = 0;
  D.5596 = 45;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5610>:
  if (c == 42) goto <D.5615>; else goto <D.5616>;
  <D.5615>:
  pos.28_90 = pos;
  _91 = pos.28_90 + 1;
  pos = _91;
  pos.29_92 = pos;
  _93 = (sizetype) pos.29_92;
  _94 = st + _93;
  c = *_94;
  if (c == 61) goto <D.5617>; else goto <D.5618>;
  <D.5617>:
  posl.30_95 = posl;
  posl = posl.30_95 + 1;
  _96 = (sizetype) posl.30_95;
  _97 = lex + _96;
  *_97 = 61;
  _98 = (sizetype) posl;
  _99 = lex + _98;
  *_99 = 0;
  pos.31_100 = pos;
  _101 = pos.31_100 + 1;
  pos = _101;
  estado_anterior = 0;
  D.5596 = 54;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5618>:
  _102 = (sizetype) posl;
  _103 = lex + _102;
  *_103 = 0;
  D.5596 = 46;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5616>:
  if (c == 47) goto <D.5619>; else goto <D.5620>;
  <D.5619>:
  pos.32_104 = pos;
  _105 = pos.32_104 + 1;
  pos = _105;
  pos.33_106 = pos;
  _107 = (sizetype) pos.33_106;
  _108 = st + _107;
  c = *_108;
  if (c == 61) goto <D.5621>; else goto <D.5622>;
  <D.5621>:
  posl.34_109 = posl;
  posl = posl.34_109 + 1;
  _110 = (sizetype) posl.34_109;
  _111 = lex + _110;
  *_111 = 61;
  _112 = (sizetype) posl;
  _113 = lex + _112;
  *_113 = 0;
  pos.35_114 = pos;
  _115 = pos.35_114 + 1;
  pos = _115;
  estado_anterior = 0;
  D.5596 = 55;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5622>:
  _116 = (sizetype) posl;
  _117 = lex + _116;
  *_117 = 0;
  D.5596 = 47;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5620>:
  if (c == 37) goto <D.5623>; else goto <D.5624>;
  <D.5623>:
  pos.36_118 = pos;
  _119 = pos.36_118 + 1;
  pos = _119;
  pos.37_120 = pos;
  _121 = (sizetype) pos.37_120;
  _122 = st + _121;
  c = *_122;
  _123 = (sizetype) posl;
  _124 = lex + _123;
  *_124 = 0;
  D.5596 = 48;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5624>:
  if (c == 124) goto <D.5625>; else goto <D.5626>;
  <D.5625>:
  pos.38_125 = pos;
  _126 = pos.38_125 + 1;
  pos = _126;
  pos.39_127 = pos;
  _128 = (sizetype) pos.39_127;
  _129 = st + _128;
  c = *_129;
  if (c == 124) goto <D.5627>; else goto <D.5628>;
  <D.5627>:
  posl.40_130 = posl;
  posl = posl.40_130 + 1;
  _131 = (sizetype) posl.40_130;
  _132 = lex + _131;
  *_132 = 124;
  _133 = (sizetype) posl;
  _134 = lex + _133;
  *_134 = 0;
  pos.41_135 = pos;
  _136 = pos.41_135 + 1;
  pos = _136;
  estado_anterior = 0;
  D.5596 = 67;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5628>:
  D.5596 = 102;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5626>:
  if (c == 38) goto <D.5629>; else goto <D.5630>;
  <D.5629>:
  pos.42_137 = pos;
  _138 = pos.42_137 + 1;
  pos = _138;
  pos.43_139 = pos;
  _140 = (sizetype) pos.43_139;
  _141 = st + _140;
  c = *_141;
  if (c == 38) goto <D.5631>; else goto <D.5632>;
  <D.5631>:
  posl.44_142 = posl;
  posl = posl.44_142 + 1;
  _143 = (sizetype) posl.44_142;
  _144 = lex + _143;
  *_144 = 38;
  _145 = (sizetype) posl;
  _146 = lex + _145;
  *_146 = 0;
  pos.45_147 = pos;
  _148 = pos.45_147 + 1;
  pos = _148;
  estado_anterior = 0;
  D.5596 = 68;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5632>:
  D.5596 = 103;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5630>:
  if (c == 62) goto <D.5633>; else goto <D.5634>;
  <D.5633>:
  pos.46_149 = pos;
  _150 = pos.46_149 + 1;
  pos = _150;
  pos.47_151 = pos;
  _152 = (sizetype) pos.47_151;
  _153 = st + _152;
  c = *_153;
  if (c == 61) goto <D.5635>; else goto <D.5636>;
  <D.5635>:
  posl.48_154 = posl;
  posl = posl.48_154 + 1;
  _155 = (sizetype) posl.48_154;
  _156 = lex + _155;
  *_156 = 61;
  _157 = (sizetype) posl;
  _158 = lex + _157;
  *_158 = 0;
  pos.49_159 = pos;
  _160 = pos.49_159 + 1;
  pos = _160;
  estado_anterior = 0;
  D.5596 = 57;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5636>:
  if (c == 62) goto <D.5637>; else goto <D.5638>;
  <D.5637>:
  posl.50_161 = posl;
  posl = posl.50_161 + 1;
  _162 = (sizetype) posl.50_161;
  _163 = lex + _162;
  *_163 = 62;
  _164 = (sizetype) posl;
  _165 = lex + _164;
  *_165 = 0;
  pos.51_166 = pos;
  _167 = pos.51_166 + 1;
  pos = _167;
  estado_anterior = 0;
  D.5596 = 66;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5638>:
  _168 = (sizetype) posl;
  _169 = lex + _168;
  *_169 = 0;
  D.5596 = 49;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5634>:
  if (c == 60) goto <D.5639>; else goto <D.5640>;
  <D.5639>:
  pos.52_170 = pos;
  _171 = pos.52_170 + 1;
  pos = _171;
  pos.53_172 = pos;
  _173 = (sizetype) pos.53_172;
  _174 = st + _173;
  c = *_174;
  if (c == 61) goto <D.5641>; else goto <D.5642>;
  <D.5641>:
  posl.54_175 = posl;
  posl = posl.54_175 + 1;
  _176 = (sizetype) posl.54_175;
  _177 = lex + _176;
  *_177 = 61;
  _178 = (sizetype) posl;
  _179 = lex + _178;
  *_179 = 0;
  pos.55_180 = pos;
  _181 = pos.55_180 + 1;
  pos = _181;
  estado_anterior = 0;
  D.5596 = 58;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5642>:
  if (c == 60) goto <D.5643>; else goto <D.5644>;
  <D.5643>:
  posl.56_182 = posl;
  posl = posl.56_182 + 1;
  _183 = (sizetype) posl.56_182;
  _184 = lex + _183;
  *_184 = 60;
  _185 = (sizetype) posl;
  _186 = lex + _185;
  *_186 = 0;
  pos.57_187 = pos;
  _188 = pos.57_187 + 1;
  pos = _188;
  estado_anterior = 0;
  D.5596 = 65;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5644>:
  _189 = (sizetype) posl;
  _190 = lex + _189;
  *_190 = 0;
  D.5596 = 50;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5640>:
  if (c == 40) goto <D.5645>; else goto <D.5646>;
  <D.5645>:
  _191 = (sizetype) posl;
  _192 = lex + _191;
  *_192 = 0;
  pos.58_193 = pos;
  _194 = pos.58_193 + 1;
  pos = _194;
  estado_anterior = 0;
  D.5596 = 34;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5646>:
  if (c == 41) goto <D.5647>; else goto <D.5648>;
  <D.5647>:
  _195 = (sizetype) posl;
  _196 = lex + _195;
  *_196 = 0;
  pos.59_197 = pos;
  _198 = pos.59_197 + 1;
  pos = _198;
  estado_anterior = 0;
  D.5596 = 35;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5648>:
  if (c == 123) goto <D.5649>; else goto <D.5650>;
  <D.5649>:
  _199 = (sizetype) posl;
  _200 = lex + _199;
  *_200 = 0;
  pos.60_201 = pos;
  _202 = pos.60_201 + 1;
  pos = _202;
  estado_anterior = 0;
  D.5596 = 36;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5650>:
  if (c == 125) goto <D.5651>; else goto <D.5652>;
  <D.5651>:
  _203 = (sizetype) posl;
  _204 = lex + _203;
  *_204 = 0;
  pos.61_205 = pos;
  _206 = pos.61_205 + 1;
  pos = _206;
  estado_anterior = 0;
  D.5596 = 37;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5652>:
  if (c == 91) goto <D.5653>; else goto <D.5654>;
  <D.5653>:
  _207 = (sizetype) posl;
  _208 = lex + _207;
  *_208 = 0;
  pos.62_209 = pos;
  _210 = pos.62_209 + 1;
  pos = _210;
  estado_anterior = 0;
  D.5596 = 38;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5654>:
  if (c == 93) goto <D.5655>; else goto <D.5656>;
  <D.5655>:
  _211 = (sizetype) posl;
  _212 = lex + _211;
  *_212 = 0;
  pos.63_213 = pos;
  _214 = pos.63_213 + 1;
  pos = _214;
  estado_anterior = 0;
  D.5596 = 39;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5656>:
  if (c == 44) goto <D.5657>; else goto <D.5658>;
  <D.5657>:
  _215 = (sizetype) posl;
  _216 = lex + _215;
  *_216 = 0;
  pos.64_217 = pos;
  _218 = pos.64_217 + 1;
  pos = _218;
  estado_anterior = 0;
  D.5596 = 42;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5658>:
  if (c == 59) goto <D.5659>; else goto <D.5660>;
  <D.5659>:
  _219 = (sizetype) posl;
  _220 = lex + _219;
  *_220 = 0;
  pos.65_221 = pos;
  _222 = pos.65_221 + 1;
  pos = _222;
  estado_anterior = 0;
  D.5596 = 40;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5660>:
  if (c == 58) goto <D.5661>; else goto <D.5662>;
  <D.5661>:
  _223 = (sizetype) posl;
  _224 = lex + _223;
  *_224 = 0;
  pos.66_225 = pos;
  _226 = pos.66_225 + 1;
  pos = _226;
  estado_anterior = 0;
  D.5596 = 41;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5662>:
  if (c == 32) goto <D.5663>; else goto <D.5665>;
  <D.5665>:
  if (c == 10) goto <D.5663>; else goto <D.5664>;
  <D.5663>:
  pos.67_227 = pos;
  _228 = pos.67_227 + 1;
  pos = _228;
  posl = posl + -1;
  pos.68_229 = pos;
  posColuna = pos.68_229;
  <D.5664>:
  if (c == 127) goto <D.5666>; else goto <D.5667>;
  <D.5666>:
  pos.69_230 = pos;
  _231 = pos.69_230 + 1;
  pos = _231;
  posl = posl + -1;
  linha.70_232 = linha;
  _233 = linha.70_232 + 1;
  linha = _233;
  pos.71_234 = pos;
  subColuna = pos.71_234;
  pos.72_235 = pos;
  posColuna = pos.72_235;
  <D.5667>:
  if (c == 9) goto <D.5668>; else goto <D.5669>;
  <D.5668>:
  tab.73_236 = tab;
  _237 = tab.73_236 + 1;
  tab = _237;
  pos.74_238 = pos;
  _239 = pos.74_238 + 1;
  pos = _239;
  pos.75_240 = pos;
  posColuna = pos.75_240;
  posl = posl + -1;
  subColuna.76_241 = subColuna;
  _242 = subColuna.76_241 + -3;
  subColuna = _242;
  <D.5669>:
  if (c == 0) goto <D.5670>; else goto <D.5671>;
  <D.5670>:
  D.5596 = -1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5671>:
  goto <D.4965>;
  <D.4966>:
  if (c > 96) goto <D.5676>; else goto <D.5672>;
  <D.5676>:
  if (c <= 122) goto <D.5673>; else goto <D.5672>;
  <D.5672>:
  if (c > 64) goto <D.5677>; else goto <D.5674>;
  <D.5677>:
  if (c <= 90) goto <D.5673>; else goto <D.5674>;
  <D.5674>:
  if (c == 95) goto <D.5673>; else goto <D.5678>;
  <D.5678>:
  if (c > 47) goto <D.5679>; else goto <D.5675>;
  <D.5679>:
  if (c <= 57) goto <D.5673>; else goto <D.5675>;
  <D.5673>:
  pos.77_243 = pos;
  _244 = pos.77_243 + 1;
  pos = _244;
  goto <D.4965>;
  <D.5675>:
  posl = posl + -1;
  _245 = (sizetype) posl;
  _246 = lex + _245;
  *_246 = 0;
  estado_anterior = 1;
  D.5596 = palavra_reservada (lex);
  goto <D.5726>;
  <D.4967>:
  if (c > 47) goto <D.5680>; else goto <D.5681>;
  <D.5680>:
  if (c <= 57) goto <D.5682>; else goto <D.5683>;
  <D.5682>:
  pos.78_247 = pos;
  _248 = pos.78_247 + 1;
  pos = _248;
  goto <D.4965>;
  <D.5683>:
  <D.5681>:
  if (c == 46) goto <D.5684>; else goto <D.5685>;
  <D.5684>:
  pos.79_249 = pos;
  _250 = pos.79_249 + 1;
  pos = _250;
  estado = 3;
  estado_anterior = 2;
  goto <D.4965>;
  <D.5685>:
  if (c == 69) goto <D.5686>; else goto <D.5687>;
  <D.5686>:
  pos.80_251 = pos;
  _252 = pos.80_251 + 1;
  pos = _252;
  estado = 4;
  estado_anterior = 2;
  goto <D.4965>;
  <D.5687>:
  posl = posl + -1;
  _253 = (sizetype) posl;
  _254 = lex + _253;
  *_254 = 0;
  estado_anterior = 2;
  D.5596 = 80;
  goto <D.5726>;
  <D.4968>:
  if (c > 47) goto <D.5689>; else goto <D.5688>;
  <D.5689>:
  if (c <= 57) goto <D.5690>; else goto <D.5688>;
  <D.5690>:
  pos.81_255 = pos;
  _256 = pos.81_255 + 1;
  pos = _256;
  estado = 7;
  goto <D.4965>;
  <D.5688>:
  D.5596 = 101;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.4969>:
  if (c > 47) goto <D.5692>; else goto <D.5691>;
  <D.5692>:
  if (c <= 57) goto <D.5693>; else goto <D.5691>;
  <D.5693>:
  pos.82_257 = pos;
  _258 = pos.82_257 + 1;
  pos = _258;
  estado = 6;
  goto <D.4965>;
  <D.5691>:
  if (c == 45) goto <D.5694>; else goto <D.5696>;
  <D.5696>:
  if (c == 43) goto <D.5694>; else goto <D.5695>;
  <D.5694>:
  pos.83_259 = pos;
  _260 = pos.83_259 + 1;
  pos = _260;
  estado = 5;
  goto <D.4965>;
  <D.5695>:
  D.5596 = 100;
  goto <D.5726>;
  <D.4970>:
  if (c > 47) goto <D.5697>; else goto <D.5698>;
  <D.5697>:
  if (c <= 57) goto <D.5699>; else goto <D.5700>;
  <D.5699>:
  pos.84_261 = pos;
  _262 = pos.84_261 + 1;
  pos = _262;
  estado = 6;
  goto <D.4965>;
  <D.5700>:
  <D.5698>:
  D.5596 = 100;
  goto <D.5726>;
  <D.4971>:
  if (c > 47) goto <D.5701>; else goto <D.5702>;
  <D.5701>:
  if (c <= 57) goto <D.5703>; else goto <D.5704>;
  <D.5703>:
  pos.85_263 = pos;
  _264 = pos.85_263 + 1;
  pos = _264;
  goto <D.4965>;
  <D.5704>:
  <D.5702>:
  estado_anterior.86_265 = estado_anterior;
  if (estado_anterior.86_265 == 2) goto <D.5705>; else goto <D.5706>;
  <D.5705>:
  posl = posl + -1;
  _266 = (sizetype) posl;
  _267 = lex + _266;
  *_267 = 0;
  estado_anterior = 6;
  D.5596 = 80;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5706>:
  posl = posl + -1;
  _268 = (sizetype) posl;
  _269 = lex + _268;
  *_269 = 0;
  estado_anterior = 6;
  D.5596 = 81;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.4972>:
  if (c > 47) goto <D.5707>; else goto <D.5708>;
  <D.5707>:
  if (c <= 57) goto <D.5709>; else goto <D.5710>;
  <D.5709>:
  pos.87_270 = pos;
  _271 = pos.87_270 + 1;
  pos = _271;
  goto <D.4965>;
  <D.5710>:
  <D.5708>:
  if (c == 69) goto <D.5711>; else goto <D.5712>;
  <D.5711>:
  pos.88_272 = pos;
  _273 = pos.88_272 + 1;
  pos = _273;
  estado = 4;
  estado_anterior = 7;
  goto <D.4965>;
  <D.5712>:
  posl = posl + -1;
  _274 = (sizetype) posl;
  _275 = lex + _274;
  *_275 = 0;
  estado_anterior = 7;
  D.5596 = 81;
  goto <D.5726>;
  <D.4973>:
  if (c > 47) goto <D.5713>; else goto <D.5714>;
  <D.5713>:
  if (c <= 57) goto <D.5715>; else goto <D.5716>;
  <D.5715>:
  pos.89_276 = pos;
  _277 = pos.89_276 + 1;
  pos = _277;
  goto <D.4965>;
  <D.5716>:
  <D.5714>:
  if (c == 120) goto <D.5717>; else goto <D.5719>;
  <D.5719>:
  if (c == 88) goto <D.5717>; else goto <D.5718>;
  <D.5717>:
  pos.90_278 = pos;
  _279 = pos.90_278 + 1;
  pos = _279;
  estado = 9;
  estado_anterior = 8;
  goto <D.4965>;
  <D.5718>:
  posl = posl + -1;
  _280 = (sizetype) posl;
  _281 = lex + _280;
  *_281 = 0;
  D.5596 = 80;
  goto <D.5726>;
  <D.4974>:
  if (c > 47) goto <D.5721>; else goto <D.5720>;
  <D.5721>:
  if (c <= 57) goto <D.5722>; else goto <D.5720>;
  <D.5722>:
  pos.91_282 = pos;
  _283 = pos.91_282 + 1;
  pos = _283;
  estado_anterior = 9;
  goto <D.4965>;
  <D.5720>:
  estado_anterior.92_284 = estado_anterior;
  if (estado_anterior.92_284 == 8) goto <D.5723>; else goto <D.5724>;
  <D.5723>:
  D.5596 = 104;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5726>;
  <D.5724>:
  posl = posl + -1;
  _285 = (sizetype) posl;
  _286 = lex + _285;
  *_286 = 0;
  D.5596 = 80;
  goto <D.5726>;
  <D.4965>:
  <D.5725>:
  <D.4976>:
  if (fim == 0) goto <D.4975>; else goto <D.4977>;
  <D.4977>:
  return;
  <D.5726>:
  return D.5596;
}



;; Function leToken (leToken, funcdef_no=19, decl_uid=4978, cgraph_uid=19, symbol_order=35)

leToken ()
{
  posParser.93_1 = posParser;
  posParser.94_2 = posParser.93_1;
  _3 = posParser.94_2 + 1;
  posParser = _3;
  _4 = TKsParser[posParser.94_2];
  token = _4;
  posParser.95_5 = posParser;
  posParser.96_6 = posParser.95_5;
  _7 = posParser.96_6 + 1;
  posParser = _7;
  _8 = TKsParser[posParser.96_6];
  linha = _8;
  posParser.97_9 = posParser;
  posParser.98_10 = posParser.97_9;
  _11 = posParser.98_10 + 1;
  posParser = _11;
  _12 = TKsParser[posParser.98_10];
  coluna = _12;
  posParserLex.99_13 = posParserLex;
  posParserLex.100_14 = posParserLex.99_13;
  _15 = posParserLex.100_14 + 1;
  posParserLex = _15;
  _16 = &TKsParserLex[posParserLex.100_14];
  strcpy (&lex, _16);
  return;
}



;; Function addTabelaSimbolos (addTabelaSimbolos, funcdef_no=20, decl_uid=4988, cgraph_uid=20, symbol_order=37)

addTabelaSimbolos (char * id, char * tipo)
{
  struct tabela * aux;

  aux = malloc (32);
  _1 = &aux->id;
  strcpy (_1, id);
  _2 = &aux->tipo;
  strcpy (_2, tipo);
  ts.101_3 = ts;
  aux->prox = ts.101_3;
  ts = aux;
  return;
}



;; Function verificaDuplicacao (verificaDuplicacao, funcdef_no=21, decl_uid=4993, cgraph_uid=21, symbol_order=38)

verificaDuplicacao (char * lex, struct tabela * tab)
{
  int D.5729;

  if (tab == 0B) goto <D.5727>; else goto <D.5728>;
  <D.5727>:
  D.5729 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5732>;
  <D.5728>:
  _1 = &tab->id;
  _2 = strcmp (_1, lex);
  if (_2 == 0) goto <D.5730>; else goto <D.5731>;
  <D.5730>:
  printf ("Variavel %s ja foi declarada\n", lex);
  coluna.102_3 = coluna;
  linha.103_4 = linha;
  printf ("Erro ocorreu na linha %d, coluna %d", linha.103_4, coluna.102_3);
  exit (0);
  <D.5731>:
  _5 = tab->prox;
  D.5729 = verificaDuplicacao (lex, _5);
  goto <D.5732>;
  <D.5732>:
  return D.5729;
}



;; Function consultaTipo (consultaTipo, funcdef_no=22, decl_uid=4998, cgraph_uid=22, symbol_order=39)

consultaTipo (char * id, char * Tipo, struct tabela * tab)
{
  if (tab == 0B) goto <D.5733>; else goto <D.5734>;
  <D.5733>:
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5737>;
  <D.5734>:
  _1 = &tab->id;
  _2 = strcmp (_1, id);
  if (_2 == 0) goto <D.5735>; else goto <D.5736>;
  <D.5735>:
  _3 = &tab->tipo;
  strcpy (Tipo, _3);
  <D.5736>:
  _4 = tab->prox;
  consultaTipo (id, Tipo, _4);
  <D.5737>:
  return;
}



;; Function PROGC (PROGC, funcdef_no=23, decl_uid=4757, cgraph_uid=23, symbol_order=40)

PROGC ()
{
  int D.5740;

  _1 = LD ();
  if (_1 != 0) goto <D.5738>; else goto <D.5739>;
  <D.5738>:
  D.5740 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5741>;
  <D.5739>:
  D.5740 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5741>;
  <D.5741>:
  return D.5740;
}



;; Function LD (LD, funcdef_no=24, decl_uid=4758, cgraph_uid=24, symbol_order=41)

LD ()
{
  int D.5746;

  _1 = DEC ();
  if (_1 != 0) goto <D.5742>; else goto <D.5743>;
  <D.5742>:
  _2 = RLD ();
  if (_2 != 0) goto <D.5744>; else goto <D.5745>;
  <D.5744>:
  D.5746 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5747>;
  <D.5745>:
  D.5746 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5747>;
  <D.5743>:
  D.5746 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5747>;
  <D.5747>:
  return D.5746;
}



;; Function RLD (RLD, funcdef_no=25, decl_uid=4759, cgraph_uid=25, symbol_order=42)

RLD (char * RLD_c)
{
  char LD_c[1000];
  int D.5750;

  _1 = LD (&LD_c);
  if (_1 != 0) goto <D.5748>; else goto <D.5749>;
  <D.5748>:
  strcpy (RLD_c, &LD_c);
  D.5750 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5752>;
  <D.5749>:
  D.5750 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5752>;
  <D.5752>:
  LD_c = {CLOBBER};
  goto <D.5751>;
  <D.5751>:
  return D.5750;
}



;; Function DEC (DEC, funcdef_no=26, decl_uid=4760, cgraph_uid=26, symbol_order=43)

DEC ()
{
  char Tipo_t[10];
  char RDEC_t[10];
  int D.5761;

  _1 = TIPO (&Tipo_t);
  if (_1 != 0) goto <D.5753>; else goto <D.5754>;
  <D.5753>:
  strcpy (&RDEC_t, &Tipo_t);
  token.104_2 = token;
  if (token.104_2 == 1) goto <D.5755>; else goto <D.5756>;
  <D.5755>:
  ts.105_3 = ts;
  _4 = verificaDuplicacao (&lex, ts.105_3);
  if (_4 != 0) goto <D.5757>; else goto <D.5758>;
  <D.5757>:
  addTabelaSimbolos (&lex, &Tipo_t);
  <D.5758>:
  leToken ();
  _5 = RDEC (&RDEC_t);
  if (_5 != 0) goto <D.5759>; else goto <D.5760>;
  <D.5759>:
  D.5761 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5763>;
  <D.5760>:
  D.5761 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5763>;
  <D.5756>:
  coluna.106_6 = coluna;
  linha.107_7 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.107_7, coluna.106_6);
  D.5761 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5763>;
  <D.5754>:
  D.5761 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5763>;
  <D.5763>:
  RDEC_t = {CLOBBER};
  Tipo_t = {CLOBBER};
  goto <D.5762>;
  <D.5762>:
  return D.5761;
}



;; Function RDEC (RDEC, funcdef_no=27, decl_uid=4761, cgraph_uid=27, symbol_order=44)

RDEC ()
{
  char DV_t[10];
  char DF_c[1000];
  int D.5768;

  token.108_1 = token;
  if (token.108_1 == 42) goto <D.5764>; else goto <D.5765>;
  <D.5764>:
  leToken ();
  _2 = DV (&DV_t);
  if (_2 != 0) goto <D.5766>; else goto <D.5767>;
  <D.5766>:
  D.5768 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5767>:
  D.5768 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5765>:
  token.109_3 = token;
  if (token.109_3 == 34) goto <D.5769>; else goto <D.5770>;
  <D.5769>:
  leToken ();
  _4 = DF (&DF_c);
  if (_4 != 0) goto <D.5771>; else goto <D.5772>;
  <D.5771>:
  D.5768 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5772>:
  D.5768 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5770>:
  token.110_5 = token;
  if (token.110_5 == 40) goto <D.5773>; else goto <D.5774>;
  <D.5773>:
  leToken ();
  D.5768 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5774>:
  token.111_6 = token;
  if (token.111_6 == 43) goto <D.5775>; else goto <D.5776>;
  <D.5775>:
  leToken ();
  token.112_7 = token;
  if (token.112_7 == 80) goto <D.5777>; else goto <D.5778>;
  <D.5777>:
  leToken ();
  token.113_8 = token;
  if (token.113_8 == 40) goto <D.5779>; else goto <D.5780>;
  <D.5779>:
  leToken ();
  D.5768 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5780>:
  coluna.114_9 = coluna;
  linha.115_10 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.115_10, coluna.114_9);
  D.5768 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5778>:
  coluna.116_11 = coluna;
  linha.117_12 = linha;
  printf ("Erro: esperava token contante inteira na linha %d coluna %d\n", linha.117_12, coluna.116_11);
  D.5768 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5776>:
  coluna.118_13 = coluna;
  linha.119_14 = linha;
  printf ("Erro: esperava token \';\', \')\' ou \',\' na linha %d coluna %d\n", linha.119_14, coluna.118_13);
  D.5768 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5782>;
  <D.5782>:
  DF_c = {CLOBBER};
  DV_t = {CLOBBER};
  goto <D.5781>;
  <D.5781>:
  return D.5768;
}



;; Function DV (DV, funcdef_no=28, decl_uid=4763, cgraph_uid=28, symbol_order=45)

DV (char * DV_t)
{
  char RDV_t[10];
  int D.5789;

  token.120_1 = token;
  if (token.120_1 == 1) goto <D.5783>; else goto <D.5784>;
  <D.5783>:
  strcpy (&RDV_t, DV_t);
  ts.121_2 = ts;
  _3 = verificaDuplicacao (&lex, ts.121_2);
  if (_3 != 0) goto <D.5785>; else goto <D.5786>;
  <D.5785>:
  addTabelaSimbolos (&lex, DV_t);
  <D.5786>:
  leToken ();
  _4 = RDV (&RDV_t);
  if (_4 != 0) goto <D.5787>; else goto <D.5788>;
  <D.5787>:
  D.5789 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5791>;
  <D.5788>:
  D.5789 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5791>;
  <D.5784>:
  coluna.122_5 = coluna;
  linha.123_6 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.123_6, coluna.122_5);
  D.5789 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5791>;
  <D.5791>:
  RDV_t = {CLOBBER};
  goto <D.5790>;
  <D.5790>:
  return D.5789;
}



;; Function RDV (RDV, funcdef_no=29, decl_uid=4765, cgraph_uid=29, symbol_order=46)

RDV (char * RDV_t)
{
  char DV_t[10];
  int D.5796;

  token.124_1 = token;
  if (token.124_1 == 42) goto <D.5792>; else goto <D.5793>;
  <D.5792>:
  strcpy (&DV_t, RDV_t);
  leToken ();
  _2 = DV (&DV_t);
  if (_2 != 0) goto <D.5794>; else goto <D.5795>;
  <D.5794>:
  D.5796 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5800>;
  <D.5795>:
  D.5796 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5800>;
  <D.5793>:
  token.125_3 = token;
  if (token.125_3 == 40) goto <D.5797>; else goto <D.5798>;
  <D.5797>:
  leToken ();
  D.5796 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5800>;
  <D.5798>:
  coluna.126_4 = coluna;
  linha.127_5 = linha;
  printf ("Erro: esperava token \',\' ou \';\' na linha %d coluna %d\n", linha.127_5, coluna.126_4);
  D.5796 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5800>;
  <D.5800>:
  DV_t = {CLOBBER};
  goto <D.5799>;
  <D.5799>:
  return D.5796;
}



;; Function TIPO (TIPO, funcdef_no=30, decl_uid=4767, cgraph_uid=30, symbol_order=47)

TIPO (char * Tipo_t)
{
  int D.5806;

  token.128_1 = token;
  if (token.128_1 == 69) goto <D.5801>; else goto <D.5803>;
  <D.5803>:
  token.129_2 = token;
  if (token.129_2 == 4) goto <D.5801>; else goto <D.5804>;
  <D.5804>:
  token.130_3 = token;
  if (token.130_3 == 6) goto <D.5801>; else goto <D.5802>;
  <D.5801>:
  token.131_4 = token;
  switch (token.131_4) <default: <D.5805>, case 4: <D.5029>, case 6: <D.5030>, case 7: <D.5031>, case 69: <D.5027>>
  <D.5027>:
  __builtin_memcpy (Tipo_t, "char", 5);
  goto <D.5028>;
  <D.5029>:
  __builtin_memcpy (Tipo_t, "int", 4);
  goto <D.5028>;
  <D.5030>:
  __builtin_memcpy (Tipo_t, "float", 6);
  goto <D.5028>;
  <D.5031>:
  __builtin_memcpy (Tipo_t, "double", 7);
  goto <D.5028>;
  <D.5028>:
  <D.5805>:
  leToken ();
  D.5806 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5807>;
  <D.5802>:
  D.5806 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5807>;
  <D.5807>:
  return D.5806;
}



;; Function DF (DF, funcdef_no=31, decl_uid=4768, cgraph_uid=31, symbol_order=48)

DF ()
{
  int D.5818;

  _1 = LP ();
  if (_1 != 0) goto <D.5808>; else goto <D.5809>;
  <D.5808>:
  token.132_2 = token;
  if (token.132_2 == 35) goto <D.5810>; else goto <D.5811>;
  <D.5810>:
  leToken ();
  token.133_3 = token;
  if (token.133_3 == 36) goto <D.5812>; else goto <D.5813>;
  <D.5812>:
  leToken ();
  _4 = CORPO ();
  if (_4 != 0) goto <D.5814>; else goto <D.5815>;
  <D.5814>:
  token.134_5 = token;
  if (token.134_5 == 37) goto <D.5816>; else goto <D.5817>;
  <D.5816>:
  leToken ();
  D.5818 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5817>:
  coluna.135_6 = coluna;
  linha.136_7 = linha;
  printf ("Erro: esperava token \'}\' na linha %d coluna %d\n", linha.136_7, coluna.135_6);
  D.5818 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5815>:
  D.5818 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5813>:
  coluna.137_8 = coluna;
  linha.138_9 = linha;
  printf ("Erro: esperava token \'{\' na linha %d coluna %d\n", linha.138_9, coluna.137_8);
  D.5818 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5811>:
  coluna.139_10 = coluna;
  linha.140_11 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.140_11, coluna.139_10);
  D.5818 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5809>:
  D.5818 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5819>:
  return D.5818;
}



;; Function LP (LP, funcdef_no=32, decl_uid=4769, cgraph_uid=32, symbol_order=49)

LP ()
{
  char TIPO_t[10];
  int D.5828;

  _1 = TIPO (&TIPO_t);
  if (_1 != 0) goto <D.5820>; else goto <D.5821>;
  <D.5820>:
  token.141_2 = token;
  if (token.141_2 == 1) goto <D.5822>; else goto <D.5823>;
  <D.5822>:
  ts.142_3 = ts;
  _4 = verificaDuplicacao (&lex, ts.142_3);
  if (_4 != 0) goto <D.5824>; else goto <D.5825>;
  <D.5824>:
  addTabelaSimbolos (&lex, &TIPO_t);
  <D.5825>:
  leToken ();
  _5 = RLP ();
  if (_5 != 0) goto <D.5826>; else goto <D.5827>;
  <D.5826>:
  D.5828 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5830>;
  <D.5827>:
  D.5828 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5830>;
  <D.5823>:
  coluna.143_6 = coluna;
  linha.144_7 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.144_7, coluna.143_6);
  D.5828 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5830>;
  <D.5821>:
  D.5828 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5830>;
  <D.5830>:
  TIPO_t = {CLOBBER};
  goto <D.5829>;
  <D.5829>:
  return D.5828;
}



;; Function RLP (RLP, funcdef_no=33, decl_uid=4770, cgraph_uid=33, symbol_order=50)

RLP ()
{
  char TIPO_t[10];
  int D.5841;

  token.145_1 = token;
  if (token.145_1 == 42) goto <D.5831>; else goto <D.5832>;
  <D.5831>:
  leToken ();
  _2 = TIPO (&TIPO_t);
  if (_2 != 0) goto <D.5833>; else goto <D.5834>;
  <D.5833>:
  token.146_3 = token;
  if (token.146_3 == 1) goto <D.5835>; else goto <D.5836>;
  <D.5835>:
  ts.147_4 = ts;
  _5 = verificaDuplicacao (&lex, ts.147_4);
  if (_5 != 0) goto <D.5837>; else goto <D.5838>;
  <D.5837>:
  addTabelaSimbolos (&lex, &TIPO_t);
  <D.5838>:
  leToken ();
  _6 = RLP ();
  if (_6 != 0) goto <D.5839>; else goto <D.5840>;
  <D.5839>:
  D.5841 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5843>;
  <D.5840>:
  D.5841 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5843>;
  <D.5836>:
  coluna.148_7 = coluna;
  linha.149_8 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.149_8, coluna.148_7);
  D.5841 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5843>;
  <D.5834>:
  D.5841 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5843>;
  <D.5832>:
  D.5841 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5843>;
  <D.5843>:
  TIPO_t = {CLOBBER};
  goto <D.5842>;
  <D.5842>:
  return D.5841;
}



;; Function CORPO (CORPO, funcdef_no=34, decl_uid=4771, cgraph_uid=34, symbol_order=51)

CORPO ()
{
  int D.5846;

  _1 = LCD ();
  if (_1 != 0) goto <D.5844>; else goto <D.5845>;
  <D.5844>:
  D.5846 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5847>;
  <D.5845>:
  D.5846 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5847>;
  <D.5847>:
  return D.5846;
}



;; Function LCD (LCD, funcdef_no=35, decl_uid=4772, cgraph_uid=35, symbol_order=52)

LCD ()
{
  char COM_c[1000];
  char TIPO_t[10];
  char DV_t[10];
  int D.5852;

  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.5848>; else goto <D.5849>;
  <D.5848>:
  _2 = LCD ();
  if (_2 != 0) goto <D.5850>; else goto <D.5851>;
  <D.5850>:
  D.5852 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5860>;
  <D.5851>:
  D.5852 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5860>;
  <D.5849>:
  _3 = TIPO (&TIPO_t);
  if (_3 != 0) goto <D.5853>; else goto <D.5854>;
  <D.5853>:
  strcpy (&DV_t, &TIPO_t);
  _4 = DV (&DV_t);
  if (_4 != 0) goto <D.5855>; else goto <D.5856>;
  <D.5855>:
  _5 = LCD ();
  if (_5 != 0) goto <D.5857>; else goto <D.5858>;
  <D.5857>:
  D.5852 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5860>;
  <D.5858>:
  D.5852 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5860>;
  <D.5856>:
  D.5852 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5860>;
  <D.5854>:
  D.5852 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5860>;
  <D.5860>:
  DV_t = {CLOBBER};
  TIPO_t = {CLOBBER};
  COM_c = {CLOBBER};
  goto <D.5859>;
  <D.5859>:
  return D.5852;
}



;; Function COM (COM, funcdef_no=36, decl_uid=4774, cgraph_uid=36, symbol_order=53)

COM (char * COM_c)
{
  char COMIF_c[1000];
  char COMDOWHILE_c[1000];
  char COMFOR_c[1000];
  char COMWHILE_c[1000];
  char RDEC_c[1000];
  char LCD_c[1000];
  char E_c[1000];
  char E_p[10];
  char E_tp[10];
  char TIPO_t[10];
  int D.5865;

  _1 = E (&E_tp, &E_p, &E_c);
  if (_1 != 0) goto <D.5861>; else goto <D.5862>;
  <D.5861>:
  token.150_2 = token;
  if (token.150_2 == 40) goto <D.5863>; else goto <D.5864>;
  <D.5863>:
  strcpy (COM_c, &E_c);
  leToken ();
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5864>:
  coluna.151_3 = coluna;
  linha.152_4 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.152_4, coluna.151_3);
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5862>:
  _5 = COMWHILE (&COMWHILE_c);
  if (_5 != 0) goto <D.5866>; else goto <D.5867>;
  <D.5866>:
  strcpy (COM_c, &COMWHILE_c);
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5867>:
  _6 = COMDOWHILE (&COMDOWHILE_c);
  if (_6 != 0) goto <D.5868>; else goto <D.5869>;
  <D.5868>:
  strcpy (COM_c, &COMDOWHILE_c);
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5869>:
  _7 = COMIF (&COMIF_c);
  if (_7 != 0) goto <D.5870>; else goto <D.5871>;
  <D.5870>:
  strcpy (COM_c, &COMIF_c);
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5871>:
  _8 = COMFOR (&COMFOR_c);
  if (_8 != 0) goto <D.5872>; else goto <D.5873>;
  <D.5872>:
  strcpy (COM_c, &COMFOR_c);
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5873>:
  token.153_9 = token;
  if (token.153_9 == 25) goto <D.5874>; else goto <D.5875>;
  <D.5874>:
  leToken ();
  token.154_10 = token;
  if (token.154_10 == 40) goto <D.5876>; else goto <D.5877>;
  <D.5876>:
  leToken ();
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5877>:
  coluna.155_11 = coluna;
  linha.156_12 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.156_12, coluna.155_11);
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5875>:
  token.157_13 = token;
  if (token.157_13 == 10) goto <D.5878>; else goto <D.5879>;
  <D.5878>:
  laco.158_14 = laco;
  if (laco.158_14 == 0) goto <D.5880>; else goto <D.5881>;
  <D.5880>:
  printf ("Erro: comando break fora de laco de repeticao");
  exit (0);
  <D.5881>:
  leToken ();
  token.159_15 = token;
  if (token.159_15 == 40) goto <D.5882>; else goto <D.5883>;
  <D.5882>:
  leToken ();
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5883>:
  coluna.160_16 = coluna;
  linha.161_17 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.161_17, coluna.160_16);
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5879>:
  token.162_18 = token;
  if (token.162_18 == 18) goto <D.5884>; else goto <D.5885>;
  <D.5884>:
  laco.163_19 = laco;
  if (laco.163_19 == 0) goto <D.5886>; else goto <D.5887>;
  <D.5886>:
  printf ("Erro: comando continue fora de laco de repeticao");
  exit (0);
  <D.5887>:
  leToken ();
  token.164_20 = token;
  if (token.164_20 == 40) goto <D.5888>; else goto <D.5889>;
  <D.5888>:
  leToken ();
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5889>:
  coluna.165_21 = coluna;
  linha.166_22 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.166_22, coluna.165_21);
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5885>:
  token.167_23 = token;
  if (token.167_23 == 36) goto <D.5890>; else goto <D.5891>;
  <D.5890>:
  leToken ();
  _24 = LCD (&LCD_c);
  if (_24 != 0) goto <D.5892>; else goto <D.5893>;
  <D.5892>:
  token.168_25 = token;
  if (token.168_25 == 37) goto <D.5894>; else goto <D.5895>;
  <D.5894>:
  strcpy (COM_c, &LCD_c);
  leToken ();
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5895>:
  coluna.169_26 = coluna;
  linha.170_27 = linha;
  printf ("Erro: esperava token \'}\' na linha %d coluna %d\n", linha.170_27, coluna.169_26);
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5893>:
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5891>:
  _28 = TIPO (&TIPO_t);
  if (_28 != 0) goto <D.5896>; else goto <D.5897>;
  <D.5896>:
  token.171_29 = token;
  if (token.171_29 == 1) goto <D.5898>; else goto <D.5899>;
  <D.5898>:
  ts.172_30 = ts;
  _31 = verificaDuplicacao (&lex, ts.172_30);
  if (_31 != 0) goto <D.5900>; else goto <D.5901>;
  <D.5900>:
  addTabelaSimbolos (&lex, &TIPO_t);
  <D.5901>:
  leToken ();
  _32 = RDEC ();
  if (_32 != 0) goto <D.5902>; else goto <D.5903>;
  <D.5902>:
  strcpy (COM_c, &RDEC_c);
  D.5865 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5903>:
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5899>:
  coluna.173_33 = coluna;
  linha.174_34 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.174_34, coluna.173_33);
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5897>:
  D.5865 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5905>;
  <D.5905>:
  TIPO_t = {CLOBBER};
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  LCD_c = {CLOBBER};
  RDEC_c = {CLOBBER};
  COMWHILE_c = {CLOBBER};
  COMFOR_c = {CLOBBER};
  COMDOWHILE_c = {CLOBBER};
  COMIF_c = {CLOBBER};
  goto <D.5904>;
  <D.5904>:
  return D.5865;
}



;; Function COMIF (COMIF, funcdef_no=37, decl_uid=4776, cgraph_uid=37, symbol_order=54)

COMIF (char * COMIF_c)
{
  char RIF_c[1000];
  char COM_c[1000];
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.5918;

  MEM[(char * {ref-all})&RIF_c] = 0;
  token.175_1 = token;
  if (token.175_1 == 11) goto <D.5906>; else goto <D.5907>;
  <D.5906>:
  leToken ();
  token.176_2 = token;
  if (token.176_2 == 34) goto <D.5908>; else goto <D.5909>;
  <D.5908>:
  leToken ();
  _3 = E (&E_tp, &E_p, &E_c);
  if (_3 != 0) goto <D.5910>; else goto <D.5911>;
  <D.5910>:
  token.177_4 = token;
  if (token.177_4 == 35) goto <D.5912>; else goto <D.5913>;
  <D.5912>:
  leToken ();
  _5 = COM (&COM_c);
  if (_5 != 0) goto <D.5914>; else goto <D.5915>;
  <D.5914>:
  _6 = RIF (&RIF_c);
  if (_6 != 0) goto <D.5916>; else goto <D.5917>;
  <D.5916>:
  D.5918 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5920>;
  <D.5917>:
  D.5918 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5920>;
  <D.5915>:
  D.5918 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5920>;
  <D.5913>:
  coluna.178_7 = coluna;
  linha.179_8 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.179_8, coluna.178_7);
  D.5918 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5920>;
  <D.5911>:
  D.5918 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5920>;
  <D.5909>:
  coluna.180_9 = coluna;
  linha.181_10 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.181_10, coluna.180_9);
  D.5918 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5920>;
  <D.5907>:
  D.5918 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5920>;
  <D.5920>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  COM_c = {CLOBBER};
  RIF_c = {CLOBBER};
  goto <D.5919>;
  <D.5919>:
  return D.5918;
}



;; Function RIF (RIF, funcdef_no=38, decl_uid=4778, cgraph_uid=38, symbol_order=55)

RIF (char * RIF_c)
{
  char COM_c[1000];
  int D.5925;

  token.182_1 = token;
  if (token.182_1 == 12) goto <D.5921>; else goto <D.5922>;
  <D.5921>:
  leToken ();
  _2 = COM (&COM_c);
  if (_2 != 0) goto <D.5923>; else goto <D.5924>;
  <D.5923>:
  strcpy (RIF_c, &COM_c);
  D.5925 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5927>;
  <D.5924>:
  D.5925 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5927>;
  <D.5922>:
  D.5925 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5927>;
  <D.5927>:
  COM_c = {CLOBBER};
  goto <D.5926>;
  <D.5926>:
  return D.5925;
}



;; Function COMFOR (COMFOR, funcdef_no=39, decl_uid=4780, cgraph_uid=39, symbol_order=56)

COMFOR (char * COMFOR_c)
{
  char EIF3_p[1000];
  char EIF2_p[1000];
  char EIF1_p[1000];
  char EIF3_c[1000];
  char EIF2_c[1000];
  char EIF1_c[1000];
  char RFOR_c[1000];
  char COM_c[1000];
  int D.5948;

  token.183_1 = token;
  if (token.183_1 == 15) goto <D.5928>; else goto <D.5929>;
  <D.5928>:
  laco = 1;
  leToken ();
  token.184_2 = token;
  if (token.184_2 == 34) goto <D.5930>; else goto <D.5931>;
  <D.5930>:
  leToken ();
  _3 = EIF (&EIF1_c, &EIF1_p);
  if (_3 != 0) goto <D.5932>; else goto <D.5933>;
  <D.5932>:
  token.185_4 = token;
  if (token.185_4 == 40) goto <D.5934>; else goto <D.5935>;
  <D.5934>:
  leToken ();
  _5 = EIF (&EIF2_c, &EIF2_p);
  if (_5 != 0) goto <D.5936>; else goto <D.5937>;
  <D.5936>:
  token.186_6 = token;
  if (token.186_6 == 40) goto <D.5938>; else goto <D.5939>;
  <D.5938>:
  leToken ();
  _7 = EIF (&EIF3_c, &EIF3_p);
  if (_7 != 0) goto <D.5940>; else goto <D.5941>;
  <D.5940>:
  token.187_8 = token;
  if (token.187_8 == 35) goto <D.5942>; else goto <D.5943>;
  <D.5942>:
  leToken ();
  _9 = COM (&COM_c);
  if (_9 != 0) goto <D.5944>; else goto <D.5945>;
  <D.5944>:
  laco = 0;
  _10 = RFOR (&RFOR_c);
  if (_10 != 0) goto <D.5946>; else goto <D.5947>;
  <D.5946>:
  D.5948 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5947>:
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5945>:
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5943>:
  coluna.188_11 = coluna;
  linha.189_12 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.189_12, coluna.188_11);
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5941>:
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5939>:
  coluna.190_13 = coluna;
  linha.191_14 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.191_14, coluna.190_13);
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5937>:
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5935>:
  coluna.192_15 = coluna;
  linha.193_16 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.193_16, coluna.192_15);
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5933>:
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5931>:
  coluna.194_17 = coluna;
  linha.195_18 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.195_18, coluna.194_17);
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5929>:
  D.5948 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5950>;
  <D.5950>:
  COM_c = {CLOBBER};
  RFOR_c = {CLOBBER};
  EIF1_c = {CLOBBER};
  EIF2_c = {CLOBBER};
  EIF3_c = {CLOBBER};
  EIF1_p = {CLOBBER};
  EIF2_p = {CLOBBER};
  EIF3_p = {CLOBBER};
  goto <D.5949>;
  <D.5949>:
  return D.5948;
}



;; Function RFOR (RFOR, funcdef_no=40, decl_uid=4782, cgraph_uid=40, symbol_order=57)

RFOR (char * RFOR_c)
{
  char COM_c[1000];
  int D.5953;

  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.5951>; else goto <D.5952>;
  <D.5951>:
  strcpy (RFOR_c, &COM_c);
  D.5953 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5955>;
  <D.5952>:
  D.5953 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5955>;
  <D.5955>:
  COM_c = {CLOBBER};
  goto <D.5954>;
  <D.5954>:
  return D.5953;
}



;; Function EIF (EIF, funcdef_no=41, decl_uid=4785, cgraph_uid=41, symbol_order=58)

EIF (char * EIF_c, char * EIF_p)
{
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.5958;

  _1 = E (&E_tp, &E_p, &E_c);
  if (_1 != 0) goto <D.5956>; else goto <D.5957>;
  <D.5956>:
  strcpy (EIF_c, &E_c);
  strcpy (EIF_p, &E_p);
  D.5958 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5960>;
  <D.5957>:
  D.5958 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5960>;
  <D.5960>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  goto <D.5959>;
  <D.5959>:
  return D.5958;
}



;; Function COMWHILE (COMWHILE, funcdef_no=42, decl_uid=4787, cgraph_uid=42, symbol_order=59)

COMWHILE (char * COMWHILE_c)
{
  char RWHILE_c[1000];
  char COM_c[1000];
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.5974;

  token.196_1 = token;
  if (token.196_1 == 13) goto <D.5962>; else goto <D.5961>;
  <D.5962>:
  doWhile.197_2 = doWhile;
  if (doWhile.197_2 != 1) goto <D.5963>; else goto <D.5961>;
  <D.5963>:
  laco = 1;
  leToken ();
  token.198_3 = token;
  if (token.198_3 == 34) goto <D.5964>; else goto <D.5965>;
  <D.5964>:
  leToken ();
  _4 = E (&E_tp, &E_p, &E_c);
  if (_4 != 0) goto <D.5966>; else goto <D.5967>;
  <D.5966>:
  token.199_5 = token;
  if (token.199_5 == 35) goto <D.5968>; else goto <D.5969>;
  <D.5968>:
  leToken ();
  _6 = COM (&COM_c);
  if (_6 != 0) goto <D.5970>; else goto <D.5971>;
  <D.5970>:
  _7 = RWHILE (&RWHILE_c);
  if (_7 != 0) goto <D.5972>; else goto <D.5973>;
  <D.5972>:
  laco = 0;
  D.5974 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5973>:
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5971>:
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5969>:
  coluna.200_8 = coluna;
  linha.201_9 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.201_9, coluna.200_8);
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5967>:
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5965>:
  coluna.202_10 = coluna;
  linha.203_11 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.203_11, coluna.202_10);
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5961>:
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5976>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  COM_c = {CLOBBER};
  RWHILE_c = {CLOBBER};
  goto <D.5975>;
  <D.5975>:
  return D.5974;
}



;; Function RWHILE (RWHILE, funcdef_no=43, decl_uid=4789, cgraph_uid=43, symbol_order=60)

RWHILE (char * RWHILE_c)
{
  char COM_c[1000];
  int D.5979;

  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.5977>; else goto <D.5978>;
  <D.5977>:
  strcpy (RWHILE_c, &COM_c);
  D.5979 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5981>;
  <D.5978>:
  D.5979 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5981>;
  <D.5981>:
  COM_c = {CLOBBER};
  goto <D.5980>;
  <D.5980>:
  return D.5979;
}



;; Function COMDOWHILE (COMDOWHILE, funcdef_no=44, decl_uid=4791, cgraph_uid=44, symbol_order=61)

COMDOWHILE (char * COMDOWHILE_c)
{
  char RDOWHILE_c[1000];
  char COM_c[1000];
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.5998;

  token.204_1 = token;
  if (token.204_1 == 14) goto <D.5982>; else goto <D.5983>;
  <D.5982>:
  laco = 1;
  doWhile = 1;
  leToken ();
  _2 = COM (&COM_c);
  if (_2 != 0) goto <D.5984>; else goto <D.5985>;
  <D.5984>:
  _3 = RDOWHILE (&RDOWHILE_c);
  if (_3 != 0) goto <D.5986>; else goto <D.5987>;
  <D.5986>:
  token.205_4 = token;
  if (token.205_4 == 13) goto <D.5988>; else goto <D.5989>;
  <D.5988>:
  leToken ();
  token.206_5 = token;
  if (token.206_5 == 34) goto <D.5990>; else goto <D.5991>;
  <D.5990>:
  leToken ();
  _6 = E (&E_tp, &E_p, &E_c);
  if (_6 != 0) goto <D.5992>; else goto <D.5993>;
  <D.5992>:
  token.207_7 = token;
  if (token.207_7 == 35) goto <D.5994>; else goto <D.5995>;
  <D.5994>:
  leToken ();
  token.208_8 = token;
  if (token.208_8 == 40) goto <D.5996>; else goto <D.5997>;
  <D.5996>:
  leToken ();
  doWhile = 0;
  laco = 0;
  D.5998 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.5997>:
  coluna.209_9 = coluna;
  linha.210_10 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.210_10, coluna.209_9);
  goto <D.5999>;
  <D.5995>:
  coluna.211_11 = coluna;
  linha.212_12 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.212_12, coluna.211_11);
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.5999>:
  goto <D.6000>;
  <D.5993>:
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.6000>:
  goto <D.6001>;
  <D.5991>:
  coluna.213_13 = coluna;
  linha.214_14 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.214_14, coluna.213_13);
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.6001>:
  goto <D.6002>;
  <D.5989>:
  coluna.215_15 = coluna;
  linha.216_16 = linha;
  printf ("Erro: esperava token \'while\' na linha %d coluna %d\n", linha.216_16, coluna.215_15);
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.6002>:
  goto <D.6003>;
  <D.5987>:
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.6003>:
  goto <D.6004>;
  <D.5985>:
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.6004>:
  goto <D.6005>;
  <D.5983>:
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6008>;
  <D.6005>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  COM_c = {CLOBBER};
  RDOWHILE_c = {CLOBBER};
  goto <D.6007>;
  <D.6008>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  COM_c = {CLOBBER};
  RDOWHILE_c = {CLOBBER};
  goto <D.6006>;
  <D.6007>:
  return;
  <D.6006>:
  return D.5998;
}



;; Function RDOWHILE (RDOWHILE, funcdef_no=45, decl_uid=4793, cgraph_uid=45, symbol_order=62)

RDOWHILE (char * RDOWHILE_c)
{
  char COM_c[1000];
  int D.6011;

  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.6009>; else goto <D.6010>;
  <D.6009>:
  strcpy (RDOWHILE_c, &COM_c);
  D.6011 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6013>;
  <D.6010>:
  D.6011 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6013>;
  <D.6013>:
  COM_c = {CLOBBER};
  goto <D.6012>;
  <D.6012>:
  return D.6011;
}



;; Function E (E, funcdef_no=46, decl_uid=4797, cgraph_uid=46, symbol_order=63)

E (char * E_tp, char * E_p, char * E_c)
{
  char E1_c[1000];
  char E1_p[10];
  char E1_s[10];
  char E1_h[10];
  char E1_tp[10];
  char ELinha_sc[1000];
  char ELinha_sp[10];
  char ELinha_hc[1000];
  char ELinha_hp[10];
  char ELinha_p[10];
  char ELinha_c[1000];
  char ELinha_s[10];
  char ELinha_h[10];
  int D.6018;

  _1 = E1 (&E1_tp, &E1_h, &E1_s, &E1_p, &E1_c);
  if (_1 != 0) goto <D.6014>; else goto <D.6015>;
  <D.6014>:
  strcpy (&ELinha_h, &E1_tp);
  strcpy (&ELinha_hp, &E1_p);
  strcpy (&ELinha_hc, &E1_c);
  _2 = ELinha (&ELinha_h, &ELinha_s, &ELinha_p, &ELinha_hp, &ELinha_sp, &ELinha_c, &ELinha_hc, &ELinha_sc);
  if (_2 != 0) goto <D.6016>; else goto <D.6017>;
  <D.6016>:
  strcpy (E_tp, &ELinha_s);
  strcpy (E_p, &ELinha_sp);
  strcpy (E_c, &ELinha_sc);
  D.6018 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6020>;
  <D.6017>:
  D.6018 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6020>;
  <D.6015>:
  D.6018 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6020>;
  <D.6020>:
  ELinha_h = {CLOBBER};
  ELinha_s = {CLOBBER};
  ELinha_c = {CLOBBER};
  ELinha_p = {CLOBBER};
  ELinha_hp = {CLOBBER};
  ELinha_hc = {CLOBBER};
  ELinha_sp = {CLOBBER};
  ELinha_sc = {CLOBBER};
  E1_tp = {CLOBBER};
  E1_h = {CLOBBER};
  E1_s = {CLOBBER};
  E1_p = {CLOBBER};
  E1_c = {CLOBBER};
  goto <D.6019>;
  <D.6019>:
  return D.6018;
}



;; Function ELinha (ELinha, funcdef_no=47, decl_uid=4806, cgraph_uid=47, symbol_order=64)

ELinha (char * ELinha_h, char * ELinha_s, char * ELinha_p, char * ELinha_hp, char * ELinha_sp, char * ELinha_c, char * ELinha_hc, char * ELinha_sc)
{
  char E1_c[1000];
  char E1_p[10];
  char E1_s[10];
  char E1_h[10];
  char E1_tp[10];
  char ELinha2_c[1000];
  char ELinha2_p[10];
  char ELinha2_s[10];
  char ELinha2_h[10];
  char ELinha2_hc[1000];
  char ELinha2_hp[10];
  char ELinha2_sc[1000];
  char ELinha2_sp[10];
  int D.6027;

  token.217_1 = token;
  if (token.217_1 == 42) goto <D.6021>; else goto <D.6022>;
  <D.6021>:
  leToken ();
  _2 = E1 (&E1_tp, &E1_h, &E1_s, &E1_p, &E1_c);
  if (_2 != 0) goto <D.6023>; else goto <D.6024>;
  <D.6023>:
  strcpy (&ELinha2_h, &E1_tp);
  _3 = ELinha (&ELinha2_h, &ELinha2_s, &ELinha2_p, &ELinha2_hp, &ELinha2_sp, &ELinha2_c, &ELinha2_hc, &ELinha2_sc);
  if (_3 != 0) goto <D.6025>; else goto <D.6026>;
  <D.6025>:
  strcpy (ELinha_s, &ELinha2_s);
  strcpy (ELinha_p, &ELinha2_p);
  sprintf (ELinha_c, "%s %s", &E1_c, &ELinha2_c);
  D.6027 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6029>;
  <D.6026>:
  D.6027 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6029>;
  <D.6024>:
  D.6027 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6029>;
  <D.6022>:
  strcpy (ELinha_s, ELinha_h);
  strcpy (ELinha_sp, ELinha_hp);
  strcpy (ELinha_sc, ELinha_hc);
  D.6027 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6029>;
  <D.6029>:
  ELinha2_sp = {CLOBBER};
  ELinha2_sc = {CLOBBER};
  ELinha2_hp = {CLOBBER};
  ELinha2_hc = {CLOBBER};
  ELinha2_h = {CLOBBER};
  ELinha2_s = {CLOBBER};
  ELinha2_p = {CLOBBER};
  ELinha2_c = {CLOBBER};
  E1_tp = {CLOBBER};
  E1_h = {CLOBBER};
  E1_s = {CLOBBER};
  E1_p = {CLOBBER};
  E1_c = {CLOBBER};
  goto <D.6028>;
  <D.6028>:
  return D.6027;
}



;; Function E1 (E1, funcdef_no=48, decl_uid=4812, cgraph_uid=48, symbol_order=65)

E1 (char * E1_tp, char * E1_h, char * E1_s, char * E1_p, char * E1_c)
{
  char E2_c[1000];
  char E2_p[10];
  char E2_s[10];
  char E2_h[10];
  char E2_tp[10];
  char E1Linha_c[1000];
  char E1Linha_p[10];
  char E1Linha_tp[10];
  char E1Linha_s[10];
  char E1Linha_h[10];
  int D.6036;

  _1 = E2 (&E2_tp, &E2_h, &E2_s, &E2_p, &E2_c);
  if (_1 != 0) goto <D.6030>; else goto <D.6031>;
  <D.6030>:
  token.218_2 = token;
  if (token.218_2 == 43) goto <D.6032>; else goto <D.6033>;
  <D.6032>:
  strcpy (&E1Linha_h, &E2_tp);
  leToken ();
  _3 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_3 != 0) goto <D.6034>; else goto <D.6035>;
  <D.6034>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s\n", &E1Linha_c, &E2_p, &E1Linha_p);
  D.6036 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6035>:
  D.6036 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6033>:
  token.219_4 = token;
  if (token.219_4 == 54) goto <D.6037>; else goto <D.6038>;
  <D.6037>:
  strcpy (&E1Linha_h, &E2_tp);
  leToken ();
  _5 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_5 != 0) goto <D.6039>; else goto <D.6040>;
  <D.6039>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s * %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6036 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6040>:
  D.6036 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6038>:
  token.220_6 = token;
  if (token.220_6 == 55) goto <D.6041>; else goto <D.6042>;
  <D.6041>:
  strcpy (&E1Linha_h, &E2_tp);
  leToken ();
  _7 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_7 != 0) goto <D.6043>; else goto <D.6044>;
  <D.6043>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s / %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6036 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6044>:
  D.6036 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6042>:
  token.221_8 = token;
  if (token.221_8 == 53) goto <D.6045>; else goto <D.6046>;
  <D.6045>:
  strcpy (&E1Linha_h, &E2_tp);
  leToken ();
  _9 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_9 != 0) goto <D.6047>; else goto <D.6048>;
  <D.6047>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s + %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6036 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6048>:
  D.6036 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6046>:
  token.222_10 = token;
  if (token.222_10 == 52) goto <D.6049>; else goto <D.6050>;
  <D.6049>:
  strcpy (&E1Linha_h, &E2_tp);
  leToken ();
  _11 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_11 != 0) goto <D.6051>; else goto <D.6052>;
  <D.6051>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s - %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6036 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6052>:
  D.6036 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6050>:
  strcpy (E1_tp, &E2_tp);
  strcpy (E1_p, &E2_p);
  strcpy (E1_c, &E2_c);
  D.6036 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6055>;
  <D.6031>:
  E1Linha_h = {CLOBBER};
  E1Linha_s = {CLOBBER};
  E1Linha_tp = {CLOBBER};
  E1Linha_p = {CLOBBER};
  E1Linha_c = {CLOBBER};
  E2_tp = {CLOBBER};
  E2_h = {CLOBBER};
  E2_s = {CLOBBER};
  E2_p = {CLOBBER};
  E2_c = {CLOBBER};
  goto <D.6054>;
  <D.6055>:
  E1Linha_h = {CLOBBER};
  E1Linha_s = {CLOBBER};
  E1Linha_tp = {CLOBBER};
  E1Linha_p = {CLOBBER};
  E1Linha_c = {CLOBBER};
  E2_tp = {CLOBBER};
  E2_h = {CLOBBER};
  E2_s = {CLOBBER};
  E2_p = {CLOBBER};
  E2_c = {CLOBBER};
  goto <D.6053>;
  <D.6054>:
  return;
  <D.6053>:
  return D.6036;
}



;; Function E2 (E2, funcdef_no=49, decl_uid=4818, cgraph_uid=49, symbol_order=66)

E2 (char * E2_tp, char * E2_h, char * E2_s, char * E2_p, char * E2_c)
{
  char E3_c[1000];
  char E3_p[10];
  char E3_tp[10];
  char E2Linha_sc[1000];
  char E2Linha_hc[1000];
  char E2Linha_sp[10];
  char E2Linha_hp[10];
  char E2Linha_s[10];
  char E2Linha_h[10];
  int D.6060;

  _1 = E3 (&E3_tp, &E3_p, &E3_c);
  if (_1 != 0) goto <D.6056>; else goto <D.6057>;
  <D.6056>:
  strcpy (&E2Linha_h, &E3_tp);
  strcpy (&E2Linha_hp, &E3_p);
  strcpy (&E2Linha_hc, &E3_c);
  _2 = E2Linha (&E2Linha_h, &E2Linha_s, &E2Linha_hp, &E2Linha_sp, &E2Linha_hc, &E2Linha_sc);
  if (_2 != 0) goto <D.6058>; else goto <D.6059>;
  <D.6058>:
  strcpy (E2_tp, &E2Linha_s);
  strcpy (E2_p, &E2Linha_sp);
  strcpy (E2_c, &E2Linha_sc);
  D.6060 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6062>;
  <D.6059>:
  D.6060 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6062>;
  <D.6057>:
  D.6060 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6062>;
  <D.6062>:
  E2Linha_h = {CLOBBER};
  E2Linha_s = {CLOBBER};
  E2Linha_hp = {CLOBBER};
  E2Linha_sp = {CLOBBER};
  E2Linha_hc = {CLOBBER};
  E2Linha_sc = {CLOBBER};
  E3_tp = {CLOBBER};
  E3_p = {CLOBBER};
  E3_c = {CLOBBER};
  goto <D.6061>;
  <D.6061>:
  return D.6060;
}



;; Function E2Linha (E2Linha, funcdef_no=50, decl_uid=4825, cgraph_uid=50, symbol_order=67)

E2Linha (char * E2Linha_h, char * E2Linha_s, char * E2Linha_hp, char * E2Linha_sp, char * E2Linha_hc, char * E2Linha_sc)
{
  char E2Linha2_sc[1000];
  char E2Linha2_hc[1000];
  char E2Linha2_sp[10];
  char E2Linha2_hp[10];
  char E2Linha2_s[10];
  char E2Linha2_h[10];
  char E2_c[1000];
  char E2_p[10];
  char E2_s[10];
  char E2_h[10];
  char E2_tp[10];
  int D.6073;

  token.223_1 = token;
  if (token.223_1 == 64) goto <D.6063>; else goto <D.6064>;
  <D.6063>:
  leToken ();
  _2 = E2 (&E2_tp, &E2_h, &E2_s, &E2_p, &E2_c);
  if (_2 != 0) goto <D.6065>; else goto <D.6066>;
  <D.6065>:
  token.224_3 = token;
  if (token.224_3 == 41) goto <D.6067>; else goto <D.6068>;
  <D.6067>:
  leToken ();
  _4 = E2 (&E2_tp, &E2_h, &E2_s, &E2_p, &E2_c);
  if (_4 != 0) goto <D.6069>; else goto <D.6070>;
  <D.6069>:
  _5 = E2Linha (&E2Linha2_h, &E2Linha2_s, &E2Linha2_hp, &E2Linha2_sp, &E2Linha2_hc, &E2Linha2_sc);
  if (_5 != 0) goto <D.6071>; else goto <D.6072>;
  <D.6071>:
  D.6073 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6075>;
  <D.6072>:
  D.6073 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6075>;
  <D.6070>:
  D.6073 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6075>;
  <D.6068>:
  coluna.225_6 = coluna;
  linha.226_7 = linha;
  printf ("Erro: esperava token \':\' na linha %d coluna %d\n", linha.226_7, coluna.225_6);
  D.6073 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6075>;
  <D.6066>:
  D.6073 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6075>;
  <D.6064>:
  strcpy (E2Linha_s, E2Linha_h);
  strcpy (E2Linha_sp, E2Linha_hp);
  strcpy (E2Linha_sc, E2Linha_hc);
  D.6073 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6075>;
  <D.6075>:
  E2_tp = {CLOBBER};
  E2_h = {CLOBBER};
  E2_s = {CLOBBER};
  E2_p = {CLOBBER};
  E2_c = {CLOBBER};
  E2Linha2_h = {CLOBBER};
  E2Linha2_s = {CLOBBER};
  E2Linha2_hp = {CLOBBER};
  E2Linha2_sp = {CLOBBER};
  E2Linha2_hc = {CLOBBER};
  E2Linha2_sc = {CLOBBER};
  goto <D.6074>;
  <D.6074>:
  return D.6073;
}



;; Function E3 (E3, funcdef_no=51, decl_uid=4829, cgraph_uid=51, symbol_order=68)

E3 (char * E3_tp, char * E3_p, char * E3_c)
{
  char E4_c[1000];
  char E4_p[10];
  char E4_tp[10];
  char E3Linha_sc[1000];
  char E3Linha_hc[1000];
  char E3Linha_sp[10];
  char E3Linha_hp[10];
  char E3Linha_s[10];
  char E3Linha_h[10];
  int D.6080;

  _1 = E4 (&E4_tp, &E4_p, &E4_c);
  if (_1 != 0) goto <D.6076>; else goto <D.6077>;
  <D.6076>:
  strcpy (&E3Linha_h, &E4_tp);
  strcpy (&E3Linha_hp, &E4_p);
  strcpy (&E3Linha_hc, &E4_c);
  _2 = E3Linha (&E3Linha_h, &E3Linha_s, &E3Linha_hp, &E3Linha_sp, &E3Linha_hc, &E3Linha_sc);
  if (_2 != 0) goto <D.6078>; else goto <D.6079>;
  <D.6078>:
  strcpy (E3_tp, &E3Linha_s);
  strcpy (E3_p, &E3Linha_sp);
  strcpy (E3_c, &E3Linha_sc);
  D.6080 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6082>;
  <D.6079>:
  D.6080 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6082>;
  <D.6077>:
  D.6080 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6082>;
  <D.6082>:
  E3Linha_h = {CLOBBER};
  E3Linha_s = {CLOBBER};
  E3Linha_hp = {CLOBBER};
  E3Linha_sp = {CLOBBER};
  E3Linha_hc = {CLOBBER};
  E3Linha_sc = {CLOBBER};
  E4_tp = {CLOBBER};
  E4_p = {CLOBBER};
  E4_c = {CLOBBER};
  goto <D.6081>;
  <D.6081>:
  return D.6080;
}



;; Function E3Linha (E3Linha, funcdef_no=52, decl_uid=4836, cgraph_uid=52, symbol_order=69)

E3Linha (char * E3Linha_h, char * E3Linha_s, char * E3Linha_hp, char * E3Linha_sp, char * E3Linha_hc, char * E3Linha_sc)
{
  char E4_c[1000];
  char E4_p[10];
  char E4_tp[10];
  char E3Linha2_sc[1000];
  char E3Linha2_hc[1000];
  char E3Linha2_sp[10];
  char E3Linha2_hp[10];
  char E3Linha2_s[10];
  char E3Linha2_h[10];
  int D.6089;

  token.227_1 = token;
  if (token.227_1 == 67) goto <D.6083>; else goto <D.6084>;
  <D.6083>:
  leToken ();
  _2 = E4 (&E4_tp, &E4_p, &E4_c);
  if (_2 != 0) goto <D.6085>; else goto <D.6086>;
  <D.6085>:
  __builtin_memcpy (&E3Linha2_h, "int", 4);
  _3 = E3Linha (&E3Linha2_h, &E3Linha2_s, &E3Linha2_hp, &E3Linha2_sp, &E3Linha2_hc, &E3Linha2_sc);
  if (_3 != 0) goto <D.6087>; else goto <D.6088>;
  <D.6087>:
  strcpy (E3Linha_s, &E3Linha2_s);
  strcpy (E3Linha_sp, &E3Linha2_sp);
  strcpy (E3Linha_sc, &E3Linha2_sc);
  D.6089 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6094>;
  <D.6088>:
  goto <D.6090>;
  <D.6086>:
  D.6089 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6094>;
  <D.6090>:
  goto <D.6091>;
  <D.6084>:
  strcpy (E3Linha_s, E3Linha_h);
  strcpy (E3Linha_sp, E3Linha_hp);
  strcpy (E3Linha_sc, E3Linha_hc);
  D.6089 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6094>;
  <D.6091>:
  E3Linha2_h = {CLOBBER};
  E3Linha2_s = {CLOBBER};
  E3Linha2_hp = {CLOBBER};
  E3Linha2_sp = {CLOBBER};
  E3Linha2_hc = {CLOBBER};
  E3Linha2_sc = {CLOBBER};
  E4_tp = {CLOBBER};
  E4_p = {CLOBBER};
  E4_c = {CLOBBER};
  goto <D.6093>;
  <D.6094>:
  E3Linha2_h = {CLOBBER};
  E3Linha2_s = {CLOBBER};
  E3Linha2_hp = {CLOBBER};
  E3Linha2_sp = {CLOBBER};
  E3Linha2_hc = {CLOBBER};
  E3Linha2_sc = {CLOBBER};
  E4_tp = {CLOBBER};
  E4_p = {CLOBBER};
  E4_c = {CLOBBER};
  goto <D.6092>;
  <D.6093>:
  return;
  <D.6092>:
  return D.6089;
}



;; Function E4 (E4, funcdef_no=53, decl_uid=4840, cgraph_uid=53, symbol_order=70)

E4 (char * E4_tp, char * E4_p, char * E4_c)
{
  char E5_c[1000];
  char E5_p[10];
  char E5_tp[10];
  char E4Linha_sc[1000];
  char E4Linha_hc[1000];
  char E4Linha_sp[10];
  char E4Linha_hp[10];
  char E4Linha_s[10];
  char E4Linha_h[10];
  int D.6099;

  _1 = E5 (&E5_tp, &E5_p, &E5_c);
  if (_1 != 0) goto <D.6095>; else goto <D.6096>;
  <D.6095>:
  strcpy (&E4Linha_h, &E5_tp);
  strcpy (&E4Linha_hp, &E5_p);
  strcpy (&E4Linha_hc, &E5_c);
  _2 = E4Linha (&E4Linha_h, &E4Linha_s, &E4Linha_hp, &E4Linha_sp, &E4Linha_hc, &E4Linha_sc);
  if (_2 != 0) goto <D.6097>; else goto <D.6098>;
  <D.6097>:
  strcpy (E4_tp, &E4Linha_s);
  strcpy (E4_p, &E4Linha_sp);
  strcpy (E4_c, &E4Linha_sc);
  D.6099 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6101>;
  <D.6098>:
  D.6099 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6101>;
  <D.6096>:
  D.6099 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6101>;
  <D.6101>:
  E4Linha_h = {CLOBBER};
  E4Linha_s = {CLOBBER};
  E4Linha_hp = {CLOBBER};
  E4Linha_sp = {CLOBBER};
  E4Linha_hc = {CLOBBER};
  E4Linha_sc = {CLOBBER};
  E5_tp = {CLOBBER};
  E5_p = {CLOBBER};
  E5_c = {CLOBBER};
  goto <D.6100>;
  <D.6100>:
  return D.6099;
}



;; Function E4Linha (E4Linha, funcdef_no=54, decl_uid=4847, cgraph_uid=54, symbol_order=71)

E4Linha (char * E4Linha_h, char * E4Linha_s, char * E4Linha_hp, char * E4Linha_sp, char * E4Linha_hc, char * E4Linha_sc)
{
  char E5_c[1000];
  char E5_p[10];
  char E5_tp[10];
  char E4Linha2_sc[1000];
  char E4Linha2_hc[1000];
  char E4Linha2_sp[10];
  char E4Linha2_hp[10];
  char E4Linha2_s[10];
  char E4Linha2_h[10];
  int D.6108;

  token.228_1 = token;
  if (token.228_1 == 68) goto <D.6102>; else goto <D.6103>;
  <D.6102>:
  leToken ();
  _2 = E5 (&E5_tp, &E5_p, &E5_c);
  if (_2 != 0) goto <D.6104>; else goto <D.6105>;
  <D.6104>:
  __builtin_memcpy (&E4Linha2_h, "int", 4);
  _3 = E4Linha (&E4Linha2_h, &E4Linha2_s, &E4Linha2_hp, &E4Linha2_sp, &E4Linha2_hc, &E4Linha2_sc);
  if (_3 != 0) goto <D.6106>; else goto <D.6107>;
  <D.6106>:
  strcpy (E4Linha_s, &E4Linha2_s);
  strcpy (E4Linha_sp, &E4Linha2_sp);
  strcpy (E4Linha_sc, &E4Linha2_sc);
  D.6108 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6110>;
  <D.6107>:
  D.6108 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6110>;
  <D.6105>:
  D.6108 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6110>;
  <D.6103>:
  strcpy (E4Linha_s, E4Linha_h);
  strcpy (E4Linha_sp, E4Linha_hp);
  strcpy (E4Linha_sc, E4Linha_hc);
  D.6108 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6110>;
  <D.6110>:
  E4Linha2_h = {CLOBBER};
  E4Linha2_s = {CLOBBER};
  E4Linha2_hp = {CLOBBER};
  E4Linha2_sp = {CLOBBER};
  E4Linha2_hc = {CLOBBER};
  E4Linha2_sc = {CLOBBER};
  E5_tp = {CLOBBER};
  E5_p = {CLOBBER};
  E5_c = {CLOBBER};
  goto <D.6109>;
  <D.6109>:
  return D.6108;
}



;; Function E5 (E5, funcdef_no=55, decl_uid=4851, cgraph_uid=55, symbol_order=72)

E5 (char * E5_tp, char * E5_p, char * E5_c)
{
  char E5Linha_sc[1000];
  char E5Linha_hc[1000];
  char E5Linha_sp[10];
  char E5Linha_hp[10];
  char E5Linha_s[10];
  char E5Linha_h[10];
  char E6_c[1000];
  char E6_p[10];
  char E6_tp[10];
  int D.6115;

  _1 = E6 (&E6_tp, &E6_p, &E6_c);
  if (_1 != 0) goto <D.6111>; else goto <D.6112>;
  <D.6111>:
  strcpy (&E5Linha_h, &E6_tp);
  strcpy (&E5Linha_hp, &E6_p);
  strcpy (&E5Linha_hc, &E6_c);
  _2 = E5Linha (&E5Linha_h, &E5Linha_s, &E5Linha_hp, &E5Linha_sp, &E5Linha_hc, &E5Linha_sc);
  if (_2 != 0) goto <D.6113>; else goto <D.6114>;
  <D.6113>:
  strcpy (E5_tp, &E5Linha_s);
  strcpy (E5_p, &E5Linha_sp);
  strcpy (E5_c, &E5Linha_sc);
  D.6115 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6117>;
  <D.6114>:
  D.6115 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6117>;
  <D.6112>:
  D.6115 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6117>;
  <D.6117>:
  E6_tp = {CLOBBER};
  E6_p = {CLOBBER};
  E6_c = {CLOBBER};
  E5Linha_h = {CLOBBER};
  E5Linha_s = {CLOBBER};
  E5Linha_hp = {CLOBBER};
  E5Linha_sp = {CLOBBER};
  E5Linha_hc = {CLOBBER};
  E5Linha_sc = {CLOBBER};
  goto <D.6116>;
  <D.6116>:
  return D.6115;
}



;; Function E5Linha (E5Linha, funcdef_no=56, decl_uid=4858, cgraph_uid=56, symbol_order=73)

E5Linha (char * E5Linha_h, char * E5Linha_s, char * E5Linha_hp, char * E5Linha_sp, char * E5Linha_hc, char * E5Linha_sc)
{
  char E5Linha2_sc[1000];
  char E5Linha2_hc[1000];
  char E5Linha2_sp[10];
  char E5Linha2_hp[10];
  char E5Linha2_s[10];
  char E5Linha2_h[10];
  char E6_c[1000];
  char E6_p[10];
  char E6_tp[10];
  int D.6124;

  token.229_1 = token;
  if (token.229_1 == 71) goto <D.6118>; else goto <D.6119>;
  <D.6118>:
  leToken ();
  _2 = E6 (&E6_tp, &E6_p, &E6_c);
  if (_2 != 0) goto <D.6120>; else goto <D.6121>;
  <D.6120>:
  __builtin_memcpy (&E5Linha2_h, "int", 4);
  _3 = E5Linha (&E5Linha2_h, &E5Linha2_s, &E5Linha2_hp, &E5Linha2_sp, &E5Linha2_hc, &E5Linha2_sc);
  if (_3 != 0) goto <D.6122>; else goto <D.6123>;
  <D.6122>:
  strcpy (E5Linha_s, &E5Linha2_s);
  strcpy (E5Linha_sp, &E5Linha2_sp);
  strcpy (E5Linha_sc, &E5Linha2_sc);
  D.6124 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6126>;
  <D.6123>:
  D.6124 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6126>;
  <D.6121>:
  D.6124 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6126>;
  <D.6119>:
  strcpy (E5Linha_s, E5Linha_h);
  strcpy (E5Linha_sp, E5Linha_hp);
  strcpy (E5Linha_sc, E5Linha_hc);
  D.6124 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6126>;
  <D.6126>:
  E6_tp = {CLOBBER};
  E6_p = {CLOBBER};
  E6_c = {CLOBBER};
  E5Linha2_h = {CLOBBER};
  E5Linha2_s = {CLOBBER};
  E5Linha2_hp = {CLOBBER};
  E5Linha2_sp = {CLOBBER};
  E5Linha2_hc = {CLOBBER};
  E5Linha2_sc = {CLOBBER};
  goto <D.6125>;
  <D.6125>:
  return D.6124;
}



;; Function E6 (E6, funcdef_no=57, decl_uid=4862, cgraph_uid=57, symbol_order=74)

E6 (char * E6_tp, char * E6_p, char * E6_c)
{
  char E6Linha_sc[1000];
  char E6Linha_hc[1000];
  char E6Linha_sp[10];
  char E6Linha_hp[10];
  char E6Linha_s[10];
  char E6Linha_h[10];
  char E7_c[1000];
  char E7_p[10];
  char E7_tp[10];
  int D.6131;

  _1 = E7 (&E7_tp, &E7_p, &E7_c);
  if (_1 != 0) goto <D.6127>; else goto <D.6128>;
  <D.6127>:
  strcpy (&E6Linha_h, &E7_tp);
  strcpy (&E6Linha_hp, &E7_p);
  strcpy (&E6Linha_hc, &E7_c);
  _2 = E6Linha (&E6Linha_h, &E6Linha_s, &E6Linha_hp, &E6Linha_sp, &E6Linha_hc, &E6Linha_sc);
  if (_2 != 0) goto <D.6129>; else goto <D.6130>;
  <D.6129>:
  strcpy (E6_tp, &E6Linha_s);
  strcpy (E6_p, &E6Linha_sp);
  strcpy (E6_c, &E6Linha_sc);
  D.6131 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6133>;
  <D.6130>:
  D.6131 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6133>;
  <D.6128>:
  D.6131 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6133>;
  <D.6133>:
  E7_tp = {CLOBBER};
  E7_p = {CLOBBER};
  E7_c = {CLOBBER};
  E6Linha_h = {CLOBBER};
  E6Linha_s = {CLOBBER};
  E6Linha_hp = {CLOBBER};
  E6Linha_sp = {CLOBBER};
  E6Linha_hc = {CLOBBER};
  E6Linha_sc = {CLOBBER};
  goto <D.6132>;
  <D.6132>:
  return D.6131;
}



;; Function E6Linha (E6Linha, funcdef_no=58, decl_uid=4869, cgraph_uid=58, symbol_order=75)

E6Linha (char * E6Linha_h, char * E6Linha_s, char * E6Linha_hp, char * E6Linha_sp, char * E6Linha_hc, char * E6Linha_sc)
{
  char E6Linha2_sc[1000];
  char E6Linha2_hc[1000];
  char E6Linha2_sp[10];
  char E6Linha2_hp[10];
  char E6Linha2_s[10];
  char E6Linha2_h[10];
  char E7_c[1000];
  char E7_p[10];
  char E7_tp[10];
  int D.6140;

  token.230_1 = token;
  if (token.230_1 == 72) goto <D.6134>; else goto <D.6135>;
  <D.6134>:
  leToken ();
  _2 = E7 (&E7_tp, &E7_p, &E7_c);
  if (_2 != 0) goto <D.6136>; else goto <D.6137>;
  <D.6136>:
  __builtin_memcpy (&E6Linha2_h, "int", 4);
  _3 = E6Linha (&E6Linha2_h, &E6Linha2_s, &E6Linha2_hp, &E6Linha2_sp, &E6Linha2_hc, &E6Linha2_sc);
  if (_3 != 0) goto <D.6138>; else goto <D.6139>;
  <D.6138>:
  strcpy (E6Linha_s, &E6Linha2_s);
  strcpy (E6Linha_sp, &E6Linha2_sp);
  strcpy (E6Linha_sc, &E6Linha2_sc);
  D.6140 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6142>;
  <D.6139>:
  D.6140 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6142>;
  <D.6137>:
  D.6140 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6142>;
  <D.6135>:
  strcpy (E6Linha_s, E6Linha_h);
  strcpy (E6Linha_sp, E6Linha_hp);
  strcpy (E6Linha_sc, E6Linha_hc);
  D.6140 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6142>;
  <D.6142>:
  E7_tp = {CLOBBER};
  E7_p = {CLOBBER};
  E7_c = {CLOBBER};
  E6Linha2_h = {CLOBBER};
  E6Linha2_s = {CLOBBER};
  E6Linha2_hp = {CLOBBER};
  E6Linha2_sp = {CLOBBER};
  E6Linha2_hc = {CLOBBER};
  E6Linha2_sc = {CLOBBER};
  goto <D.6141>;
  <D.6141>:
  return D.6140;
}



;; Function E7 (E7, funcdef_no=59, decl_uid=4873, cgraph_uid=59, symbol_order=76)

E7 (char * E7_tp, char * E7_p, char * E7_c)
{
  char E7Linha_sc[1000];
  char E7Linha_hc[1000];
  char E7Linha_sp[10];
  char E7Linha_hp[10];
  char E7Linha_s[10];
  char E7Linha_h[10];
  char E8_c[1000];
  char E8_p[10];
  char E8_tp[10];
  int D.6147;

  _1 = E8 (&E8_tp, &E8_p, &E8_c);
  if (_1 != 0) goto <D.6143>; else goto <D.6144>;
  <D.6143>:
  strcpy (&E7Linha_h, &E8_tp);
  strcpy (&E7Linha_hp, &E8_p);
  strcpy (&E7Linha_hc, &E8_c);
  _2 = E7Linha (&E7Linha_h, &E7Linha_s, &E7Linha_hp, &E7Linha_sp, &E7Linha_hc, &E7Linha_sc);
  if (_2 != 0) goto <D.6145>; else goto <D.6146>;
  <D.6145>:
  strcpy (E7_tp, &E7Linha_s);
  strcpy (E7_p, &E7Linha_sp);
  strcpy (E7_c, &E7Linha_sc);
  D.6147 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6149>;
  <D.6146>:
  D.6147 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6149>;
  <D.6144>:
  D.6147 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6149>;
  <D.6149>:
  E8_tp = {CLOBBER};
  E8_p = {CLOBBER};
  E8_c = {CLOBBER};
  E7Linha_h = {CLOBBER};
  E7Linha_s = {CLOBBER};
  E7Linha_hp = {CLOBBER};
  E7Linha_sp = {CLOBBER};
  E7Linha_hc = {CLOBBER};
  E7Linha_sc = {CLOBBER};
  goto <D.6148>;
  <D.6148>:
  return D.6147;
}



;; Function E7Linha (E7Linha, funcdef_no=60, decl_uid=4880, cgraph_uid=60, symbol_order=77)

E7Linha (char * E7Linha_h, char * E7Linha_s, char * E7Linha_hp, char * E7Linha_sp, char * E7Linha_hc, char * E7Linha_sc)
{
  char E7Linha2_sc[1000];
  char E7Linha2_hc[1000];
  char E7Linha2_sp[10];
  char E7Linha2_hp[10];
  char E7Linha2_s[10];
  char E7Linha2_h[10];
  char E8_c[1000];
  char E8_p[10];
  char E8_tp[10];
  int D.6156;

  token.231_1 = token;
  if (token.231_1 == 70) goto <D.6150>; else goto <D.6151>;
  <D.6150>:
  leToken ();
  _2 = E8 (&E8_tp, &E8_p, &E8_c);
  if (_2 != 0) goto <D.6152>; else goto <D.6153>;
  <D.6152>:
  __builtin_memcpy (&E7Linha2_h, "int", 4);
  _3 = E7Linha (&E7Linha2_h, &E7Linha2_s, &E7Linha2_hp, &E7Linha2_sp, &E7Linha2_hc, &E7Linha2_sc);
  if (_3 != 0) goto <D.6154>; else goto <D.6155>;
  <D.6154>:
  strcpy (E7Linha_s, &E7Linha2_s);
  strcpy (E7Linha_sp, &E7Linha2_sp);
  strcpy (E7Linha_sc, &E7Linha2_sc);
  D.6156 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6158>;
  <D.6155>:
  D.6156 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6158>;
  <D.6153>:
  D.6156 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6158>;
  <D.6151>:
  strcpy (E7Linha_s, E7Linha_h);
  strcpy (E7Linha_sp, E7Linha_hp);
  strcpy (E7Linha_sc, E7Linha_hc);
  D.6156 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6158>;
  <D.6158>:
  E8_tp = {CLOBBER};
  E8_p = {CLOBBER};
  E8_c = {CLOBBER};
  E7Linha2_h = {CLOBBER};
  E7Linha2_s = {CLOBBER};
  E7Linha2_hp = {CLOBBER};
  E7Linha2_sp = {CLOBBER};
  E7Linha2_hc = {CLOBBER};
  E7Linha2_sc = {CLOBBER};
  goto <D.6157>;
  <D.6157>:
  return D.6156;
}



;; Function E8 (E8, funcdef_no=61, decl_uid=4884, cgraph_uid=61, symbol_order=78)

E8 (char * E8_tp, char * E8_p, char * E8_c)
{
  char E8Linha_sc[1000];
  char E8Linha_hc[1000];
  char E8Linha_sp[10];
  char E8Linha_hp[10];
  char E8Linha_s[10];
  char E8Linha_h[10];
  char E9_c[1000];
  char E9_p[10];
  char E9_tp[10];
  int D.6163;

  _1 = E9 (&E9_tp, &E9_p, &E9_c);
  if (_1 != 0) goto <D.6159>; else goto <D.6160>;
  <D.6159>:
  strcpy (&E8Linha_h, &E9_tp);
  strcpy (&E8Linha_hp, &E9_p);
  strcpy (&E8Linha_hc, &E9_c);
  _2 = E8Linha (&E8Linha_h, &E8Linha_s, &E8Linha_hp, &E8Linha_sp, &E8Linha_hc, &E8Linha_sc);
  if (_2 != 0) goto <D.6161>; else goto <D.6162>;
  <D.6161>:
  strcpy (E8_tp, &E8Linha_s);
  strcpy (E8_p, &E8Linha_sp);
  strcpy (E8_c, &E8Linha_sc);
  D.6163 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6165>;
  <D.6162>:
  D.6163 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6165>;
  <D.6160>:
  D.6163 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6165>;
  <D.6165>:
  E9_tp = {CLOBBER};
  E9_p = {CLOBBER};
  E9_c = {CLOBBER};
  E8Linha_h = {CLOBBER};
  E8Linha_s = {CLOBBER};
  E8Linha_hp = {CLOBBER};
  E8Linha_sp = {CLOBBER};
  E8Linha_hc = {CLOBBER};
  E8Linha_sc = {CLOBBER};
  goto <D.6164>;
  <D.6164>:
  return D.6163;
}



;; Function E8Linha (E8Linha, funcdef_no=62, decl_uid=4891, cgraph_uid=62, symbol_order=79)

E8Linha (char * E8Linha_h, char * E8Linha_s, char * E8Linha_hp, char * E8Linha_sp, char * E8Linha_hc, char * E8Linha_sc)
{
  char E8Linha2_sc[1000];
  char E8Linha2_hc[1000];
  char E8Linha2_sp[10];
  char E8Linha2_hp[10];
  char E8Linha2_s[10];
  char E8Linha2_h[10];
  char E9_c[1000];
  char E9_p[10];
  char E9_tp[10];
  int D.6172;

  token.232_1 = token;
  if (token.232_1 == 61) goto <D.6166>; else goto <D.6167>;
  <D.6166>:
  leToken ();
  _2 = E9 (&E9_tp, &E9_p, &E9_c);
  if (_2 != 0) goto <D.6168>; else goto <D.6169>;
  <D.6168>:
  __builtin_memcpy (&E8Linha2_h, "int", 4);
  _3 = E8Linha (&E8Linha2_h, &E8Linha2_s, &E8Linha2_hp, &E8Linha2_sp, &E8Linha2_hc, &E8Linha2_sc);
  if (_3 != 0) goto <D.6170>; else goto <D.6171>;
  <D.6170>:
  strcpy (E8Linha_s, &E8Linha2_s);
  strcpy (E8Linha_sp, &E8Linha2_sp);
  strcpy (E8Linha_sc, &E8Linha2_sc);
  D.6172 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6180>;
  <D.6171>:
  D.6172 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6180>;
  <D.6169>:
  D.6172 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6180>;
  <D.6167>:
  token.233_4 = token;
  if (token.233_4 == 62) goto <D.6173>; else goto <D.6174>;
  <D.6173>:
  leToken ();
  _5 = E9 (&E9_tp, &E9_p, &E9_c);
  if (_5 != 0) goto <D.6175>; else goto <D.6176>;
  <D.6175>:
  __builtin_memcpy (&E8Linha2_h, "int", 4);
  _6 = E8Linha (&E8Linha2_h, &E8Linha2_s, &E8Linha2_hp, &E8Linha2_sp, &E8Linha2_hc, &E8Linha2_sc);
  if (_6 != 0) goto <D.6177>; else goto <D.6178>;
  <D.6177>:
  strcpy (E8Linha_s, &E8Linha2_s);
  strcpy (E8Linha_sp, &E8Linha2_sp);
  strcpy (E8Linha_sc, &E8Linha2_sc);
  D.6172 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6180>;
  <D.6178>:
  D.6172 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6180>;
  <D.6176>:
  D.6172 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6180>;
  <D.6174>:
  strcpy (E8Linha_s, E8Linha_h);
  strcpy (E8Linha_sp, E8Linha_hp);
  strcpy (E8Linha_sc, E8Linha_hc);
  D.6172 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6180>;
  <D.6180>:
  E9_tp = {CLOBBER};
  E9_p = {CLOBBER};
  E9_c = {CLOBBER};
  E8Linha2_h = {CLOBBER};
  E8Linha2_s = {CLOBBER};
  E8Linha2_hp = {CLOBBER};
  E8Linha2_sp = {CLOBBER};
  E8Linha2_hc = {CLOBBER};
  E8Linha2_sc = {CLOBBER};
  goto <D.6179>;
  <D.6179>:
  return D.6172;
}



;; Function E9 (E9, funcdef_no=63, decl_uid=4895, cgraph_uid=63, symbol_order=80)

E9 (char * E9_tp, char * E9_p, char * E9_c)
{
  char E9Linha_sc[1000];
  char E9Linha_hc[1000];
  char E9Linha_sp[10];
  char E9Linha_hp[10];
  char E9Linha_s[10];
  char E9Linha_h[10];
  char E10_c[1000];
  char E10_p[10];
  char E10_tp[10];
  int D.6185;

  _1 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_1 != 0) goto <D.6181>; else goto <D.6182>;
  <D.6181>:
  strcpy (&E9Linha_h, &E10_tp);
  strcpy (&E9Linha_hp, &E10_p);
  strcpy (&E9Linha_hc, &E10_c);
  _2 = E9Linha (&E9Linha_h, &E9Linha_s, &E9Linha_hp, &E9Linha_sp, &E9Linha_hc, &E9Linha_sc);
  if (_2 != 0) goto <D.6183>; else goto <D.6184>;
  <D.6183>:
  strcpy (E9_tp, &E9Linha_s);
  strcpy (E9_p, &E9Linha_sp);
  strcpy (E9_c, &E9Linha_sc);
  D.6185 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6187>;
  <D.6184>:
  D.6185 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6187>;
  <D.6182>:
  D.6185 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6187>;
  <D.6187>:
  E10_tp = {CLOBBER};
  E10_p = {CLOBBER};
  E10_c = {CLOBBER};
  E9Linha_h = {CLOBBER};
  E9Linha_s = {CLOBBER};
  E9Linha_hp = {CLOBBER};
  E9Linha_sp = {CLOBBER};
  E9Linha_hc = {CLOBBER};
  E9Linha_sc = {CLOBBER};
  goto <D.6186>;
  <D.6186>:
  return D.6185;
}



;; Function E9Linha (E9Linha, funcdef_no=64, decl_uid=4902, cgraph_uid=64, symbol_order=81)

E9Linha (char * E9Linha_h, char * E9Linha_s, char * E9Linha_hp, char * E9Linha_sp, char * E9Linha_hc, char * E9Linha_sc)
{
  char E9Linha2_sc[1000];
  char E9Linha2_hc[1000];
  char E9Linha2_sp[10];
  char E9Linha2_hp[10];
  char E9Linha2_s[10];
  char E9Linha2_h[10];
  char E10_c[1000];
  char E10_p[10];
  char E10_tp[10];
  int D.6194;

  token.234_1 = token;
  if (token.234_1 == 50) goto <D.6188>; else goto <D.6189>;
  <D.6188>:
  leToken ();
  _2 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_2 != 0) goto <D.6190>; else goto <D.6191>;
  <D.6190>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  _3 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_3 != 0) goto <D.6192>; else goto <D.6193>;
  <D.6192>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6194 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6193>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6191>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6189>:
  token.235_4 = token;
  if (token.235_4 == 49) goto <D.6195>; else goto <D.6196>;
  <D.6195>:
  leToken ();
  _5 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_5 != 0) goto <D.6197>; else goto <D.6198>;
  <D.6197>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  _6 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_6 != 0) goto <D.6199>; else goto <D.6200>;
  <D.6199>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6194 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6200>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6198>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6196>:
  token.236_7 = token;
  if (token.236_7 == 58) goto <D.6201>; else goto <D.6202>;
  <D.6201>:
  leToken ();
  _8 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_8 != 0) goto <D.6203>; else goto <D.6204>;
  <D.6203>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  _9 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_9 != 0) goto <D.6205>; else goto <D.6206>;
  <D.6205>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6194 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6206>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6204>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6202>:
  token.237_10 = token;
  if (token.237_10 == 57) goto <D.6207>; else goto <D.6208>;
  <D.6207>:
  leToken ();
  _11 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_11 != 0) goto <D.6209>; else goto <D.6210>;
  <D.6209>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  _12 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_12 != 0) goto <D.6211>; else goto <D.6212>;
  <D.6211>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6194 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6212>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6210>:
  D.6194 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6208>:
  strcpy (E9Linha_s, E9Linha_h);
  strcpy (E9Linha_sp, E9Linha_hp);
  strcpy (E9Linha_sc, E9Linha_hc);
  D.6194 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6214>;
  <D.6214>:
  E10_tp = {CLOBBER};
  E10_p = {CLOBBER};
  E10_c = {CLOBBER};
  E9Linha2_h = {CLOBBER};
  E9Linha2_s = {CLOBBER};
  E9Linha2_hp = {CLOBBER};
  E9Linha2_sp = {CLOBBER};
  E9Linha2_hc = {CLOBBER};
  E9Linha2_sc = {CLOBBER};
  goto <D.6213>;
  <D.6213>:
  return D.6194;
}



;; Function E10 (E10, funcdef_no=65, decl_uid=4906, cgraph_uid=65, symbol_order=82)

E10 (char * E10_tp, char * E10_p, char * E10_c)
{
  char E10Linha_sc[1000];
  char E10Linha_hc[1000];
  char E10Linha_sp[10];
  char E10Linha_hp[10];
  char E10Linha_s[10];
  char E10Linha_h[10];
  char E11_c[1000];
  char E11_p[10];
  char E11_tp[10];
  int D.6219;

  _1 = E11 (&E11_tp, &E11_p, &E11_c);
  if (_1 != 0) goto <D.6215>; else goto <D.6216>;
  <D.6215>:
  strcpy (&E10Linha_h, &E11_tp);
  strcpy (&E10Linha_hp, &E11_p);
  strcpy (&E10Linha_hc, &E11_c);
  _2 = E10Linha (&E10Linha_h, &E10Linha_s, &E10Linha_hp, &E10Linha_sp, &E10Linha_hc, &E10Linha_sc);
  if (_2 != 0) goto <D.6217>; else goto <D.6218>;
  <D.6217>:
  strcpy (E10_tp, &E10Linha_s);
  strcpy (E10_p, &E10Linha_sp);
  strcpy (E10_c, &E10Linha_sc);
  D.6219 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6221>;
  <D.6218>:
  D.6219 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6221>;
  <D.6216>:
  D.6219 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6221>;
  <D.6221>:
  E11_tp = {CLOBBER};
  E11_p = {CLOBBER};
  E11_c = {CLOBBER};
  E10Linha_h = {CLOBBER};
  E10Linha_s = {CLOBBER};
  E10Linha_hp = {CLOBBER};
  E10Linha_sp = {CLOBBER};
  E10Linha_hc = {CLOBBER};
  E10Linha_sc = {CLOBBER};
  goto <D.6220>;
  <D.6220>:
  return D.6219;
}



;; Function E10Linha (E10Linha, funcdef_no=66, decl_uid=4913, cgraph_uid=66, symbol_order=83)

E10Linha (char * E10Linha_h, char * E10Linha_s, char * E10Linha_hp, char * E10Linha_sp, char * E10Linha_hc, char * E10Linha_sc)
{
  char E10Linha2_sc[1000];
  char E10Linha2_hc[1000];
  char E10Linha2_sp[10];
  char E10Linha2_hp[10];
  char E10Linha2_s[10];
  char E10Linha2_h[10];
  char E11_c[1000];
  char E11_p[10];
  char E11_tp[10];
  int D.6228;

  token.238_1 = token;
  if (token.238_1 == 65) goto <D.6222>; else goto <D.6223>;
  <D.6222>:
  leToken ();
  _2 = E11 (&E11_tp, &E11_p, &E11_c);
  if (_2 != 0) goto <D.6224>; else goto <D.6225>;
  <D.6224>:
  __builtin_memcpy (&E10Linha2_h, "int", 4);
  _3 = E10Linha (&E10Linha2_h, &E10Linha2_s, &E10Linha2_hp, &E10Linha2_sp, &E10Linha2_hc, &E10Linha2_sc);
  if (_3 != 0) goto <D.6226>; else goto <D.6227>;
  <D.6226>:
  strcpy (E10Linha_s, &E10Linha2_s);
  strcpy (E10Linha_sp, &E10Linha2_sp);
  strcpy (E10Linha_sc, &E10Linha2_sc);
  D.6228 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6236>;
  <D.6227>:
  D.6228 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6236>;
  <D.6225>:
  D.6228 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6236>;
  <D.6223>:
  token.239_4 = token;
  if (token.239_4 == 66) goto <D.6229>; else goto <D.6230>;
  <D.6229>:
  leToken ();
  _5 = E11 (&E11_tp, &E11_p, &E11_c);
  if (_5 != 0) goto <D.6231>; else goto <D.6232>;
  <D.6231>:
  __builtin_memcpy (&E10Linha2_h, "int", 4);
  _6 = E10Linha (&E10Linha2_h, &E10Linha2_s, &E10Linha2_hp, &E10Linha2_sp, &E10Linha2_hc, &E10Linha2_sc);
  if (_6 != 0) goto <D.6233>; else goto <D.6234>;
  <D.6233>:
  strcpy (E10Linha_s, &E10Linha2_s);
  strcpy (E10Linha_sp, &E10Linha2_sp);
  strcpy (E10Linha_sc, &E10Linha2_sc);
  D.6228 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6236>;
  <D.6234>:
  D.6228 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6236>;
  <D.6232>:
  D.6228 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6236>;
  <D.6230>:
  strcpy (E10Linha_s, E10Linha_h);
  strcpy (E10Linha_sp, E10Linha_hp);
  strcpy (E10Linha_sc, E10Linha_hc);
  D.6228 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6236>;
  <D.6236>:
  E11_tp = {CLOBBER};
  E11_p = {CLOBBER};
  E11_c = {CLOBBER};
  E10Linha2_h = {CLOBBER};
  E10Linha2_s = {CLOBBER};
  E10Linha2_hp = {CLOBBER};
  E10Linha2_sp = {CLOBBER};
  E10Linha2_hc = {CLOBBER};
  E10Linha2_sc = {CLOBBER};
  goto <D.6235>;
  <D.6235>:
  return D.6228;
}



;; Function E11 (E11, funcdef_no=67, decl_uid=4917, cgraph_uid=67, symbol_order=84)

E11 (char * E11_tp, char * E11_p, char * E11_c)
{
  char E11Linha_sc[1000];
  char E11Linha_hc[1000];
  char E11Linha_sp[10];
  char E11Linha_hp[10];
  char E11Linha_s[10];
  char E11Linha_h[10];
  char E12_c[1000];
  char E12_p[10];
  char E12_tp[10];
  int D.6241;

  _1 = E12 (&E12_tp, &E12_p, &E12_c);
  if (_1 != 0) goto <D.6237>; else goto <D.6238>;
  <D.6237>:
  strcpy (&E11Linha_h, &E12_tp);
  strcpy (&E11Linha_hp, &E12_p);
  strcpy (&E11Linha_hc, &E12_c);
  _2 = E11Linha (&E11Linha_h, &E11Linha_s, &E11Linha_hp, &E11Linha_sp, &E11Linha_hc, &E11Linha_sc);
  if (_2 != 0) goto <D.6239>; else goto <D.6240>;
  <D.6239>:
  strcpy (E11_tp, &E11Linha_s);
  strcpy (E11_p, &E11Linha_sp);
  strcpy (E11_c, &E11Linha_sc);
  D.6241 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6243>;
  <D.6240>:
  D.6241 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6243>;
  <D.6238>:
  D.6241 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6243>;
  <D.6243>:
  E12_tp = {CLOBBER};
  E12_p = {CLOBBER};
  E12_c = {CLOBBER};
  E11Linha_h = {CLOBBER};
  E11Linha_s = {CLOBBER};
  E11Linha_hp = {CLOBBER};
  E11Linha_sp = {CLOBBER};
  E11Linha_hc = {CLOBBER};
  E11Linha_sc = {CLOBBER};
  goto <D.6242>;
  <D.6242>:
  return D.6241;
}



;; Function E11Linha (E11Linha, funcdef_no=68, decl_uid=4924, cgraph_uid=68, symbol_order=85)

E11Linha (char * E11Linha_h, char * E11Linha_s, char * E11Linha_hp, char * E11Linha_sp, char * E11Linha_hc, char * E11Linha_sc)
{
  char E11Linha2_sc[1000];
  char E11Linha2_hc[1000];
  char E11Linha2_sp[10];
  char E11Linha2_hp[10];
  char E11Linha2_s[10];
  char E11Linha2_h[10];
  char E12_c[1000];
  char E12_p[10];
  char E12_tp[10];
  int D.6254;

  token.240_1 = token;
  if (token.240_1 == 44) goto <D.6244>; else goto <D.6245>;
  <D.6244>:
  leToken ();
  _2 = E12 (&E12_tp, &E12_p, &E12_c);
  if (_2 != 0) goto <D.6246>; else goto <D.6247>;
  <D.6246>:
  _3 = strcmp (E11Linha_h, "int");
  if (_3 == 0) goto <D.6250>; else goto <D.6248>;
  <D.6250>:
  _4 = strcmp (&E12_tp, "int");
  if (_4 == 0) goto <D.6251>; else goto <D.6248>;
  <D.6251>:
  __builtin_memcpy (&E11Linha2_h, "int", 4);
  goto <D.6249>;
  <D.6248>:
  __builtin_memcpy (&E11Linha2_h, "float", 6);
  <D.6249>:
  _5 = E11Linha (&E11Linha2_h, &E11Linha2_s, &E11Linha2_hp, &E11Linha2_sp, &E11Linha2_hc, &E11Linha2_sc);
  if (_5 != 0) goto <D.6252>; else goto <D.6253>;
  <D.6252>:
  strcpy (E11Linha_s, &E11Linha2_s);
  strcpy (E11Linha_sp, &E11Linha2_sp);
  strcpy (E11Linha_sc, &E11Linha2_sc);
  D.6254 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6269>;
  <D.6253>:
  D.6254 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6269>;
  <D.6247>:
  goto <D.6255>;
  <D.6245>:
  token.241_6 = token;
  if (token.241_6 == 45) goto <D.6256>; else goto <D.6257>;
  <D.6256>:
  leToken ();
  _7 = E12 (&E12_tp, &E12_p, &E12_c);
  if (_7 != 0) goto <D.6258>; else goto <D.6259>;
  <D.6258>:
  _8 = strcmp (E11Linha_h, "int");
  if (_8 == 0) goto <D.6262>; else goto <D.6260>;
  <D.6262>:
  _9 = strcmp (&E12_tp, "int");
  if (_9 == 0) goto <D.6263>; else goto <D.6260>;
  <D.6263>:
  __builtin_memcpy (&E11Linha2_h, "int", 4);
  goto <D.6261>;
  <D.6260>:
  __builtin_memcpy (&E11Linha2_h, "float", 6);
  <D.6261>:
  _10 = E11Linha (&E11Linha2_h, &E11Linha2_s, &E11Linha2_hp, &E11Linha2_sp, &E11Linha2_hc, &E11Linha2_sc);
  if (_10 != 0) goto <D.6264>; else goto <D.6265>;
  <D.6264>:
  strcpy (E11Linha_s, &E11Linha2_s);
  strcpy (E11Linha_sp, &E11Linha2_sp);
  strcpy (E11Linha_sc, &E11Linha2_sc);
  D.6254 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6269>;
  <D.6265>:
  D.6254 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6269>;
  <D.6259>:
  goto <D.6266>;
  <D.6257>:
  strcpy (E11Linha_s, E11Linha_h);
  strcpy (E11Linha_sp, E11Linha_hp);
  strcpy (E11Linha_sc, E11Linha_hc);
  D.6254 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6269>;
  <D.6266>:
  <D.6255>:
  E12_tp = {CLOBBER};
  E12_p = {CLOBBER};
  E12_c = {CLOBBER};
  E11Linha2_h = {CLOBBER};
  E11Linha2_s = {CLOBBER};
  E11Linha2_hp = {CLOBBER};
  E11Linha2_sp = {CLOBBER};
  E11Linha2_hc = {CLOBBER};
  E11Linha2_sc = {CLOBBER};
  goto <D.6268>;
  <D.6269>:
  E12_tp = {CLOBBER};
  E12_p = {CLOBBER};
  E12_c = {CLOBBER};
  E11Linha2_h = {CLOBBER};
  E11Linha2_s = {CLOBBER};
  E11Linha2_hp = {CLOBBER};
  E11Linha2_sp = {CLOBBER};
  E11Linha2_hc = {CLOBBER};
  E11Linha2_sc = {CLOBBER};
  goto <D.6267>;
  <D.6268>:
  return;
  <D.6267>:
  return D.6254;
}



;; Function E12 (E12, funcdef_no=69, decl_uid=4928, cgraph_uid=69, symbol_order=86)

E12 (char * E12_tp, char * E12_p, char * E12_c)
{
  char E12Linha_sc[1000];
  char E12Linha_hc[1000];
  char E12Linha_sp[10];
  char E12Linha_hp[10];
  char E12Linha_s[10];
  char E12Linha_h[10];
  char E13_c[1000];
  char E13_p[10];
  char E13_tp[10];
  int D.6274;

  _1 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_1 != 0) goto <D.6270>; else goto <D.6271>;
  <D.6270>:
  strcpy (&E12Linha_h, &E13_tp);
  strcpy (&E12Linha_hp, &E13_p);
  strcpy (&E12Linha_hc, &E13_c);
  _2 = E12Linha (&E12Linha_h, &E12Linha_s, &E12Linha_hp, &E12Linha_sp, &E12Linha_hc, &E12Linha_sc);
  if (_2 != 0) goto <D.6272>; else goto <D.6273>;
  <D.6272>:
  strcpy (E12_tp, &E12Linha_s);
  strcpy (E12_p, &E12Linha_sp);
  strcpy (E12_c, &E12Linha_sc);
  D.6274 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6276>;
  <D.6273>:
  D.6274 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6276>;
  <D.6271>:
  D.6274 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6276>;
  <D.6276>:
  E13_tp = {CLOBBER};
  E13_p = {CLOBBER};
  E13_c = {CLOBBER};
  E12Linha_h = {CLOBBER};
  E12Linha_s = {CLOBBER};
  E12Linha_hp = {CLOBBER};
  E12Linha_sp = {CLOBBER};
  E12Linha_hc = {CLOBBER};
  E12Linha_sc = {CLOBBER};
  goto <D.6275>;
  <D.6275>:
  return D.6274;
}



;; Function E12Linha (E12Linha, funcdef_no=70, decl_uid=4935, cgraph_uid=70, symbol_order=87)

E12Linha (char * E12Linha_h, char * E12Linha_s, char * E12Linha_hp, char * E12Linha_sp, char * E12Linha_hc, char * E12Linha_sc)
{
  char E12Linha2_sc[1000];
  char E12Linha2_hc[1000];
  char E12Linha2_sp[10];
  char E12Linha2_hp[10];
  char E12Linha2_s[10];
  char E12Linha2_h[10];
  char E13_c[1000];
  char E13_p[10];
  char E13_tp[10];
  int D.6287;

  token.242_1 = token;
  if (token.242_1 == 46) goto <D.6277>; else goto <D.6278>;
  <D.6277>:
  leToken ();
  _2 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_2 != 0) goto <D.6279>; else goto <D.6280>;
  <D.6279>:
  _3 = strcmp (E12Linha_h, "int");
  if (_3 == 0) goto <D.6283>; else goto <D.6281>;
  <D.6283>:
  _4 = strcmp (&E13_tp, "int");
  if (_4 != 0) goto <D.6284>; else goto <D.6281>;
  <D.6284>:
  __builtin_memcpy (&E12Linha2_h, "int", 4);
  goto <D.6282>;
  <D.6281>:
  __builtin_memcpy (&E12Linha2_h, "float", 6);
  <D.6282>:
  _5 = E12Linha (&E12Linha2_h, &E12Linha2_s, &E12Linha2_hp, &E12Linha2_sp, &E12Linha2_hc, &E12Linha2_sc);
  if (_5 != 0) goto <D.6285>; else goto <D.6286>;
  <D.6285>:
  strcpy (E12Linha_s, &E12Linha2_s);
  strcpy (E12Linha_sp, &E12Linha2_sp);
  strcpy (E12Linha_sc, &E12Linha2_sc);
  D.6287 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6286>:
  D.6287 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6280>:
  D.6287 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6278>:
  token.243_6 = token;
  if (token.243_6 == 47) goto <D.6288>; else goto <D.6289>;
  <D.6288>:
  leToken ();
  _7 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_7 != 0) goto <D.6290>; else goto <D.6291>;
  <D.6290>:
  _8 = strcmp (E12Linha_h, "int");
  if (_8 == 0) goto <D.6294>; else goto <D.6292>;
  <D.6294>:
  _9 = strcmp (&E13_tp, "int");
  if (_9 != 0) goto <D.6295>; else goto <D.6292>;
  <D.6295>:
  __builtin_memcpy (&E12Linha2_h, "int", 4);
  goto <D.6293>;
  <D.6292>:
  __builtin_memcpy (&E12Linha2_h, "float", 6);
  <D.6293>:
  _10 = E12Linha (&E12Linha2_h, &E12Linha2_s, &E12Linha2_hp, &E12Linha2_sp, &E12Linha2_hc, &E12Linha2_sc);
  if (_10 != 0) goto <D.6296>; else goto <D.6297>;
  <D.6296>:
  strcpy (E12Linha_s, &E12Linha2_s);
  strcpy (E12Linha_sp, &E12Linha2_sp);
  strcpy (E12Linha_sc, &E12Linha2_sc);
  D.6287 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6297>:
  D.6287 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6291>:
  D.6287 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6289>:
  token.244_11 = token;
  if (token.244_11 == 48) goto <D.6298>; else goto <D.6299>;
  <D.6298>:
  leToken ();
  _12 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_12 != 0) goto <D.6300>; else goto <D.6301>;
  <D.6300>:
  _13 = strcmp (E12Linha_h, "int");
  if (_13 == 0) goto <D.6304>; else goto <D.6302>;
  <D.6304>:
  _14 = strcmp (&E13_tp, "int");
  if (_14 == 0) goto <D.6305>; else goto <D.6302>;
  <D.6305>:
  __builtin_memcpy (&E12Linha2_h, "int", 4);
  goto <D.6303>;
  <D.6302>:
  printf ("Erro: opera\xc3\xa7\xc3\xa3o de resto inv\xc3\xa1lida");
  exit (0);
  <D.6303>:
  _15 = E12Linha (&E12Linha2_h, &E12Linha2_s, &E12Linha2_hp, &E12Linha2_sp, &E12Linha2_hc, &E12Linha2_sc);
  if (_15 != 0) goto <D.6306>; else goto <D.6307>;
  <D.6306>:
  strcpy (E12Linha_s, &E12Linha2_s);
  strcpy (E12Linha_sp, &E12Linha2_sp);
  strcpy (E12Linha_sc, &E12Linha2_sc);
  D.6287 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6307>:
  D.6287 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6301>:
  D.6287 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6299>:
  strcpy (E12Linha_s, E12Linha_h);
  strcpy (E12Linha_sp, E12Linha_hp);
  strcpy (E12Linha_sc, E12Linha_hc);
  D.6287 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6309>;
  <D.6309>:
  E13_tp = {CLOBBER};
  E13_p = {CLOBBER};
  E13_c = {CLOBBER};
  E12Linha2_h = {CLOBBER};
  E12Linha2_s = {CLOBBER};
  E12Linha2_hp = {CLOBBER};
  E12Linha2_sp = {CLOBBER};
  E12Linha2_hc = {CLOBBER};
  E12Linha2_sc = {CLOBBER};
  goto <D.6308>;
  <D.6308>:
  return D.6287;
}



;; Function E13 (E13, funcdef_no=71, decl_uid=4939, cgraph_uid=71, symbol_order=88)

E13 (char * E13_tp, char * E13_p, char * E13_c)
{
  char E13Linha_s[10];
  char E13Linha_h[10];
  char E13Linha_tp[10];
  char E14_c[1000];
  char E14_p[10];
  char E14_tp[10];
  int D.6316;

  _1 = E14 (&E14_tp, &E14_p, &E14_c);
  if (_1 != 0) goto <D.6310>; else goto <D.6311>;
  <D.6310>:
  token.245_2 = token;
  if (token.245_2 == 45) goto <D.6312>; else goto <D.6313>;
  <D.6312>:
  strcpy (&E13Linha_h, &E14_tp);
  leToken ();
  _3 = E13 (&E13Linha_tp, &E13Linha_h, &E13Linha_s);
  if (_3 != 0) goto <D.6314>; else goto <D.6315>;
  <D.6314>:
  strcpy (E13_tp, &E13Linha_s);
  D.6316 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6326>;
  <D.6315>:
  D.6316 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6326>;
  <D.6313>:
  token.246_4 = token;
  if (token.246_4 == 60) goto <D.6317>; else goto <D.6318>;
  <D.6317>:
  strcpy (&E13Linha_h, &E14_tp);
  leToken ();
  strcpy (E13_tp, &E13Linha_s);
  D.6316 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6326>;
  <D.6318>:
  token.247_5 = token;
  if (token.247_5 == 59) goto <D.6319>; else goto <D.6320>;
  <D.6319>:
  strcpy (&E13Linha_h, &E14_tp);
  leToken ();
  strcpy (E13_tp, &E13Linha_s);
  D.6316 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6326>;
  <D.6320>:
  token.248_6 = token;
  if (token.248_6 == 63) goto <D.6321>; else goto <D.6322>;
  <D.6321>:
  strcpy (&E13Linha_h, &E14_tp);
  leToken ();
  _7 = E13 (&E13Linha_tp, &E13Linha_h, &E13Linha_s);
  if (_7 != 0) goto <D.6323>; else goto <D.6324>;
  <D.6323>:
  strcpy (E13_tp, &E13Linha_s);
  D.6316 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6326>;
  <D.6324>:
  D.6316 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6326>;
  <D.6322>:
  strcpy (E13_tp, &E14_tp);
  strcpy (E13_p, &E14_p);
  strcpy (E13_c, &E14_c);
  D.6316 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6326>;
  <D.6311>:
  D.6316 = 0;
  goto <D.6326>;
  <D.6326>:
  E14_tp = {CLOBBER};
  E14_p = {CLOBBER};
  E14_c = {CLOBBER};
  E13Linha_tp = {CLOBBER};
  E13Linha_h = {CLOBBER};
  E13Linha_s = {CLOBBER};
  goto <D.6325>;
  <D.6325>:
  return D.6316;
}



;; Function E14 (E14, funcdef_no=72, decl_uid=4943, cgraph_uid=72, symbol_order=89)

E14 (char * E14_tp, char * E14_p, char * E14_c)
{
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.6329;

  token.249_1 = token;
  if (token.249_1 == 80) goto <D.6327>; else goto <D.6328>;
  <D.6327>:
  __builtin_memcpy (E14_tp, "int", 4);
  leToken ();
  D.6329 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6348>;
  <D.6328>:
  token.250_2 = token;
  if (token.250_2 == 81) goto <D.6330>; else goto <D.6331>;
  <D.6330>:
  __builtin_memcpy (E14_tp, "float", 6);
  leToken ();
  D.6329 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6348>;
  <D.6331>:
  token.251_3 = token;
  if (token.251_3 == 1) goto <D.6332>; else goto <D.6333>;
  <D.6332>:
  ts.252_4 = ts;
  consultaTipo (&lex, E14_tp, ts.252_4);
  _5 = strcmp (E14_tp, "int");
  if (_5 != 0) goto <D.6334>; else goto <D.6335>;
  <D.6334>:
  _6 = strcmp (E14_tp, "float");
  if (_6 != 0) goto <D.6336>; else goto <D.6337>;
  <D.6336>:
  printf ("Erro: Variavel %s nao foi declarada\n", &lex);
  exit (0);
  <D.6337>:
  <D.6335>:
  strcpy (E14_p, &lex);
  __builtin_memcpy (E14_c, "", 1);
  leToken ();
  _7 = RE ();
  if (_7 != 0) goto <D.6338>; else goto <D.6339>;
  <D.6338>:
  D.6329 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6348>;
  <D.6339>:
  D.6329 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6348>;
  <D.6333>:
  token.253_8 = token;
  if (token.253_8 == 34) goto <D.6340>; else goto <D.6341>;
  <D.6340>:
  leToken ();
  _9 = E (&E_tp, &E_p, &E_c);
  if (_9 != 0) goto <D.6342>; else goto <D.6343>;
  <D.6342>:
  token.254_10 = token;
  if (token.254_10 == 35) goto <D.6344>; else goto <D.6345>;
  <D.6344>:
  leToken ();
  strcpy (E14_c, &E_c);
  strcpy (E14_p, &E_p);
  D.6329 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6347>;
  <D.6345>:
  D.6329 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6347>;
  <D.6343>:
  D.6329 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6347>;
  <D.6347>:
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  goto <D.6348>;
  <D.6341>:
  D.6329 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6348>;
  <D.6348>:
  E_tp = {CLOBBER};
  goto <D.6346>;
  <D.6346>:
  return D.6329;
}



;; Function RE (RE, funcdef_no=73, decl_uid=4944, cgraph_uid=73, symbol_order=90)

RE ()
{
  int D.6355;

  token.255_1 = token;
  if (token.255_1 == 34) goto <D.6349>; else goto <D.6350>;
  <D.6349>:
  leToken ();
  _2 = LP ();
  if (_2 != 0) goto <D.6351>; else goto <D.6352>;
  <D.6351>:
  token.256_3 = token;
  if (token.256_3 == 35) goto <D.6353>; else goto <D.6354>;
  <D.6353>:
  leToken ();
  D.6355 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6354>:
  coluna.257_4 = coluna;
  linha.258_5 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.258_5, coluna.257_4);
  D.6355 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6352>:
  D.6355 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6350>:
  D.6355 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6356>:
  return D.6355;
}



;; Function main (main, funcdef_no=74, decl_uid=5543, cgraph_uid=74, symbol_order=91)

main ()
{
  int i;
  int escolha;
  char arquivo[20];
  char caracter;
  char lex[20];
  char conteudo[20000];
  struct FILE * codigoFonte;
  int D.6379;

  _1 = __acrt_iob_func (1);
  setbuf (_1, 0B);
  ts = 0B;
  escolha = 0;
  i = 0;
  __builtin_puts (&"-----------------------"[0]);
  __builtin_puts (&"-- Analise semantica --"[0]);
  __builtin_puts (&"-- R E S U L T A D O --"[0]);
  __builtin_puts (&"-----------------------"[0]);
  <D.5571>:
  <D.5569>:
  __builtin_puts (&"1 - ErroContinue"[0]);
  __builtin_puts (&"2 - ErroBreak"[0]);
  __builtin_puts (&"3 - ErroIncompTipo"[0]);
  __builtin_puts (&"4 - ErroVarDupli"[0]);
  __builtin_puts (&"5 - ErroVarNaoDeclarada"[0]);
  __builtin_puts (&"6 - TesteErro"[0]);
  __builtin_puts (&"7 - TesteOK"[0]);
  __builtin_puts (&"0 - Sair"[0]);
  __builtin_puts (&"-----------------------"[0]);
  scanf ("%d", &escolha);
  _2 = __acrt_iob_func (0);
  fflush (_2);
  escolha.259_3 = escolha;
  if (escolha.259_3 < 0) goto <D.6357>; else goto <D.6359>;
  <D.6359>:
  escolha.260_4 = escolha;
  if (escolha.260_4 > 7) goto <D.6357>; else goto <D.6358>;
  <D.6357>:
  __builtin_puts (&"Opcao incorreta, tente novamente ! "[0]);
  system ("pause");
  <D.6358>:
  escolha.261_5 = escolha;
  switch (escolha.261_5) <default: <D.6360>, case 0: <D.5560>, case 1: <D.5552>, case 2: <D.5554>, case 3: <D.5555>, case 4: <D.5556>, case 5: <D.5557>, case 6: <D.5558>, case 7: <D.5559>>
  <D.5552>:
  __builtin_memcpy (&arquivo, "erroContinue.txt", 17);
  escolha = 0;
  goto <D.5553>;
  <D.5554>:
  __builtin_memcpy (&arquivo, "erroBreak.txt", 14);
  escolha = 0;
  goto <D.5553>;
  <D.5555>:
  __builtin_memcpy (&arquivo, "erroIncompTipo.txt", 19);
  escolha = 0;
  goto <D.5553>;
  <D.5556>:
  __builtin_memcpy (&arquivo, "erroVarDupli.txt", 17);
  escolha = 0;
  goto <D.5553>;
  <D.5557>:
  __builtin_memcpy (&arquivo, "erroVarNaoDeclarada.txt", 24);
  escolha = 0;
  goto <D.5553>;
  <D.5558>:
  __builtin_memcpy (&arquivo, "testeErro.txt", 14);
  escolha = 0;
  goto <D.5553>;
  <D.5559>:
  __builtin_memcpy (&arquivo, "testeOk.txt", 12);
  escolha = 0;
  goto <D.5553>;
  <D.5560>:
  escolha = 0;
  goto <D.5553>;
  <D.5553>:
  <D.6360>:
  codigoFonte = fopen (&arquivo, "r");
  if (codigoFonte == 0B) goto <D.6361>; else goto <D.6362>;
  <D.6361>:
  __builtin_puts (&"Arquivo n\xc3\xa3o pode ser aberto"[0]);
  exit (1);
  <D.6362>:
  <D.5562>:
  _6 = fgetc (codigoFonte);
  caracter = (char) _6;
  _7 = feof (codigoFonte);
  if (_7 != 0) goto <D.6363>; else goto <D.6364>;
  <D.6363>:
  goto <D.5561>;
  <D.6364>:
  if (caracter != 9) goto <D.6367>; else goto <D.6365>;
  <D.6367>:
  if (caracter != 10) goto <D.6368>; else goto <D.6365>;
  <D.6368>:
  if (caracter != 13) goto <D.6369>; else goto <D.6365>;
  <D.6369>:
  i.262_8 = i;
  i = i.262_8 + 1;
  conteudo[i.262_8] = caracter;
  goto <D.6366>;
  <D.6365>:
  if (caracter == 10) goto <D.6370>; else goto <D.6371>;
  <D.6370>:
  i.263_9 = i;
  i = i.263_9 + 1;
  conteudo[i.263_9] = 127;
  goto <D.6372>;
  <D.6371>:
  if (caracter == 9) goto <D.6373>; else goto <D.6374>;
  <D.6373>:
  i.264_10 = i;
  i = i.264_10 + 1;
  conteudo[i.264_10] = 9;
  <D.6374>:
  <D.6372>:
  <D.6366>:
  goto <D.5562>;
  <D.5561>:
  conteudo[i] = 0;
  i = 0;
  goto <D.5564>;
  <D.5563>:
  TKsParser[i] = -1;
  i = i + 1;
  <D.5564>:
  if (i <= 999) goto <D.5563>; else goto <D.5565>;
  <D.5565>:
  goto <D.5567>;
  <D.5566>:
  posColuna.265_11 = posColuna;
  subColuna.266_12 = subColuna;
  _13 = posColuna.265_11 - subColuna.266_12;
  coluna = _13;
  posParser.267_14 = posParser;
  posParser.268_15 = posParser.267_14;
  _16 = posParser.268_15 + 1;
  posParser = _16;
  token.269_17 = token;
  TKsParser[posParser.268_15] = token.269_17;
  posParser.270_18 = posParser;
  posParser.271_19 = posParser.270_18;
  _20 = posParser.271_19 + 1;
  posParser = _20;
  linha.272_21 = linha;
  TKsParser[posParser.271_19] = linha.272_21;
  posParser.273_22 = posParser;
  posParser.274_23 = posParser.273_22;
  _24 = posParser.274_23 + 1;
  posParser = _24;
  coluna.275_25 = coluna;
  TKsParser[posParser.274_23] = coluna.275_25;
  posParserLex.276_26 = posParserLex;
  posParserLex.277_27 = posParserLex.276_26;
  _28 = posParserLex.277_27 + 1;
  posParserLex = _28;
  _29 = &TKsParserLex[posParserLex.277_27];
  strcpy (_29, &lex);
  <D.5567>:
  _30 = le_token (&conteudo, &lex);
  token = _30;
  token.278_31 = token;
  if (token.278_31 != -1) goto <D.5566>; else goto <D.5568>;
  <D.5568>:
  fclose (codigoFonte);
  posParser = 0;
  posParserLex = 0;
  leToken ();
  _32 = PROGC ();
  if (_32 != 0) goto <D.6375>; else goto <D.6376>;
  <D.6375>:
  __builtin_puts (&"Reconhecimento semantico concluido"[0]);
  __builtin_puts (&"-----------------------"[0]);
  getchar ();
  goto <D.6377>;
  <D.6376>:
  __builtin_puts (&"Reconhecimento semantico com Falhas"[0]);
  __builtin_puts (&"-----------------------"[0]);
  getchar ();
  <D.6377>:
  escolha.279_33 = escolha;
  if (escolha.279_33 < 0) goto <D.5569>; else goto <D.6378>;
  <D.6378>:
  escolha.280_34 = escolha;
  if (escolha.280_34 > 7) goto <D.5569>; else goto <D.5570>;
  <D.5570>:
  escolha.281_35 = escolha;
  if (escolha.281_35 != 0) goto <D.5571>; else goto <D.5572>;
  <D.5572>:
  D.6379 = 0;
  goto <D.6381>;
  <D.6381>:
  conteudo = {CLOBBER};
  lex = {CLOBBER};
  arquivo = {CLOBBER};
  escolha = {CLOBBER};
  goto <D.6380>;
  D.6379 = 0;
  goto <D.6380>;
  <D.6380>:
  return D.6379;
}


