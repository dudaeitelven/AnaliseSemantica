
;; Function palavra_reservada (palavra_reservada, funcdef_no=17, decl_uid=4970, cgraph_uid=17, symbol_order=33)

palavra_reservada (char * lex)
{
  int postab;
  int D.5646;

  postab = 0;
  goto <D.4974>;
  <D.4973>:
  _1 = &lista_pal[postab].palavra;
  _2 = strcmp (lex, _1);
  if (_2 == 0) goto <D.5644>; else goto <D.5645>;
  <D.5644>:
  D.5646 = lista_pal[postab].tk;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5647>;
  <D.5645>:
  postab = postab + 1;
  <D.4974>:
  _3 = &lista_pal[postab].palavra;
  _4 = strcmp ("fimtabela", _3);
  if (_4 != 0) goto <D.4973>; else goto <D.4975>;
  <D.4975>:
  D.5646 = 1;
  goto <D.5647>;
  <D.5647>:
  return D.5646;
}



;; Function le_token (le_token, funcdef_no=18, decl_uid=4978, cgraph_uid=18, symbol_order=34)

le_token (char * st, char * lex)
{
  char c;
  int posl;
  int fim;
  int estado;
  int D.5666;

  estado = 0;
  fim = 0;
  posl = 0;
  pos.0_1 = pos;
  posColuna = pos.0_1;
  goto <D.4996>;
  <D.4995>:
  pos.1_2 = pos;
  _3 = (sizetype) pos.1_2;
  _4 = st + _3;
  c = *_4;
  posl.2_5 = posl;
  posl = posl.2_5 + 1;
  _6 = (sizetype) posl.2_5;
  _7 = lex + _6;
  *_7 = c;
  switch (estado) <default: <D.5797>, case 0: <D.4984>, case 1: <D.4986>, case 2: <D.4987>, case 3: <D.4988>, case 4: <D.4989>, case 5: <D.4990>, case 6: <D.4991>, case 7: <D.4992>, case 8: <D.4993>, case 9: <D.4994>>
  <D.4984>:
  if (c > 96) goto <D.5652>; else goto <D.5648>;
  <D.5652>:
  if (c <= 122) goto <D.5649>; else goto <D.5648>;
  <D.5648>:
  if (c > 64) goto <D.5653>; else goto <D.5650>;
  <D.5653>:
  if (c <= 90) goto <D.5649>; else goto <D.5650>;
  <D.5650>:
  if (c == 95) goto <D.5649>; else goto <D.5651>;
  <D.5649>:
  pos.3_8 = pos;
  _9 = pos.3_8 + 1;
  pos = _9;
  estado = 1;
  estado_anterior = 0;
  goto <D.4985>;
  <D.5651>:
  if (c > 47) goto <D.5654>; else goto <D.5655>;
  <D.5654>:
  if (c <= 57) goto <D.5656>; else goto <D.5657>;
  <D.5656>:
  if (c == 48) goto <D.5658>; else goto <D.5659>;
  <D.5658>:
  pos.4_10 = pos;
  _11 = pos.4_10 + 1;
  pos = _11;
  estado = 8;
  estado_anterior = 0;
  goto <D.4985>;
  <D.5659>:
  pos.5_12 = pos;
  _13 = pos.5_12 + 1;
  pos = _13;
  estado = 2;
  estado_anterior = 0;
  goto <D.4985>;
  <D.5657>:
  <D.5655>:
  if (c == 46) goto <D.5660>; else goto <D.5661>;
  <D.5660>:
  pos.6_14 = pos;
  _15 = pos.6_14 + 1;
  pos = _15;
  estado = 3;
  estado_anterior = 0;
  goto <D.4985>;
  <D.5661>:
  if (c == 61) goto <D.5662>; else goto <D.5663>;
  <D.5662>:
  pos.7_16 = pos;
  _17 = pos.7_16 + 1;
  pos = _17;
  pos.8_18 = pos;
  _19 = (sizetype) pos.8_18;
  _20 = st + _19;
  c = *_20;
  if (c == 61) goto <D.5664>; else goto <D.5665>;
  <D.5664>:
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
  D.5666 = 61;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5665>:
  _28 = (sizetype) posl;
  _29 = lex + _28;
  *_29 = 0;
  D.5666 = 43;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5663>:
  if (c == 33) goto <D.5667>; else goto <D.5668>;
  <D.5667>:
  pos.11_30 = pos;
  _31 = pos.11_30 + 1;
  pos = _31;
  pos.12_32 = pos;
  _33 = (sizetype) pos.12_32;
  _34 = st + _33;
  c = *_34;
  if (c == 61) goto <D.5669>; else goto <D.5670>;
  <D.5669>:
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
  D.5666 = 62;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5670>:
  _42 = (sizetype) posl;
  _43 = lex + _42;
  *_43 = 0;
  D.5666 = 63;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5668>:
  if (c == 63) goto <D.5671>; else goto <D.5672>;
  <D.5671>:
  _44 = (sizetype) posl;
  _45 = lex + _44;
  *_45 = 0;
  pos.15_46 = pos;
  _47 = pos.15_46 + 1;
  pos = _47;
  estado_anterior = 0;
  D.5666 = 64;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5672>:
  if (c == 43) goto <D.5673>; else goto <D.5674>;
  <D.5673>:
  pos.16_48 = pos;
  _49 = pos.16_48 + 1;
  pos = _49;
  pos.17_50 = pos;
  _51 = (sizetype) pos.17_50;
  _52 = st + _51;
  c = *_52;
  if (c == 43) goto <D.5675>; else goto <D.5676>;
  <D.5675>:
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
  D.5666 = 60;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5676>:
  if (c == 61) goto <D.5677>; else goto <D.5678>;
  <D.5677>:
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
  D.5666 = 53;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5678>:
  _67 = (sizetype) posl;
  _68 = lex + _67;
  *_68 = 0;
  D.5666 = 44;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5674>:
  if (c == 45) goto <D.5679>; else goto <D.5680>;
  <D.5679>:
  pos.22_69 = pos;
  _70 = pos.22_69 + 1;
  pos = _70;
  pos.23_71 = pos;
  _72 = (sizetype) pos.23_71;
  _73 = st + _72;
  c = *_73;
  if (c == 45) goto <D.5681>; else goto <D.5682>;
  <D.5681>:
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
  D.5666 = 59;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5682>:
  if (c == 61) goto <D.5683>; else goto <D.5684>;
  <D.5683>:
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
  D.5666 = 52;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5684>:
  _88 = (sizetype) posl;
  _89 = lex + _88;
  *_89 = 0;
  D.5666 = 45;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5680>:
  if (c == 42) goto <D.5685>; else goto <D.5686>;
  <D.5685>:
  pos.28_90 = pos;
  _91 = pos.28_90 + 1;
  pos = _91;
  pos.29_92 = pos;
  _93 = (sizetype) pos.29_92;
  _94 = st + _93;
  c = *_94;
  if (c == 61) goto <D.5687>; else goto <D.5688>;
  <D.5687>:
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
  D.5666 = 54;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5688>:
  _102 = (sizetype) posl;
  _103 = lex + _102;
  *_103 = 0;
  D.5666 = 46;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5686>:
  if (c == 47) goto <D.5689>; else goto <D.5690>;
  <D.5689>:
  pos.32_104 = pos;
  _105 = pos.32_104 + 1;
  pos = _105;
  pos.33_106 = pos;
  _107 = (sizetype) pos.33_106;
  _108 = st + _107;
  c = *_108;
  if (c == 61) goto <D.5691>; else goto <D.5692>;
  <D.5691>:
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
  D.5666 = 55;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5692>:
  _116 = (sizetype) posl;
  _117 = lex + _116;
  *_117 = 0;
  D.5666 = 47;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5690>:
  if (c == 37) goto <D.5693>; else goto <D.5694>;
  <D.5693>:
  pos.36_118 = pos;
  _119 = pos.36_118 + 1;
  pos = _119;
  pos.37_120 = pos;
  _121 = (sizetype) pos.37_120;
  _122 = st + _121;
  c = *_122;
  if (c == 61) goto <D.5695>; else goto <D.5696>;
  <D.5695>:
  posl.38_123 = posl;
  posl = posl.38_123 + 1;
  _124 = (sizetype) posl.38_123;
  _125 = lex + _124;
  *_125 = 61;
  _126 = (sizetype) posl;
  _127 = lex + _126;
  *_127 = 0;
  pos.39_128 = pos;
  _129 = pos.39_128 + 1;
  pos = _129;
  estado_anterior = 0;
  D.5666 = 56;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5696>:
  _130 = (sizetype) posl;
  _131 = lex + _130;
  *_131 = 0;
  D.5666 = 48;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5694>:
  if (c == 124) goto <D.5697>; else goto <D.5698>;
  <D.5697>:
  pos.40_132 = pos;
  _133 = pos.40_132 + 1;
  pos = _133;
  pos.41_134 = pos;
  _135 = (sizetype) pos.41_134;
  _136 = st + _135;
  c = *_136;
  if (c == 124) goto <D.5699>; else goto <D.5700>;
  <D.5699>:
  posl.42_137 = posl;
  posl = posl.42_137 + 1;
  _138 = (sizetype) posl.42_137;
  _139 = lex + _138;
  *_139 = 124;
  _140 = (sizetype) posl;
  _141 = lex + _140;
  *_141 = 0;
  pos.43_142 = pos;
  _143 = pos.43_142 + 1;
  pos = _143;
  estado_anterior = 0;
  D.5666 = 67;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5700>:
  D.5666 = 102;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5698>:
  if (c == 38) goto <D.5701>; else goto <D.5702>;
  <D.5701>:
  pos.44_144 = pos;
  _145 = pos.44_144 + 1;
  pos = _145;
  pos.45_146 = pos;
  _147 = (sizetype) pos.45_146;
  _148 = st + _147;
  c = *_148;
  if (c == 38) goto <D.5703>; else goto <D.5704>;
  <D.5703>:
  posl.46_149 = posl;
  posl = posl.46_149 + 1;
  _150 = (sizetype) posl.46_149;
  _151 = lex + _150;
  *_151 = 38;
  _152 = (sizetype) posl;
  _153 = lex + _152;
  *_153 = 0;
  pos.47_154 = pos;
  _155 = pos.47_154 + 1;
  pos = _155;
  estado_anterior = 0;
  D.5666 = 68;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5704>:
  D.5666 = 103;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5702>:
  if (c == 62) goto <D.5705>; else goto <D.5706>;
  <D.5705>:
  pos.48_156 = pos;
  _157 = pos.48_156 + 1;
  pos = _157;
  pos.49_158 = pos;
  _159 = (sizetype) pos.49_158;
  _160 = st + _159;
  c = *_160;
  if (c == 61) goto <D.5707>; else goto <D.5708>;
  <D.5707>:
  posl.50_161 = posl;
  posl = posl.50_161 + 1;
  _162 = (sizetype) posl.50_161;
  _163 = lex + _162;
  *_163 = 61;
  _164 = (sizetype) posl;
  _165 = lex + _164;
  *_165 = 0;
  pos.51_166 = pos;
  _167 = pos.51_166 + 1;
  pos = _167;
  estado_anterior = 0;
  D.5666 = 57;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5708>:
  if (c == 62) goto <D.5709>; else goto <D.5710>;
  <D.5709>:
  posl.52_168 = posl;
  posl = posl.52_168 + 1;
  _169 = (sizetype) posl.52_168;
  _170 = lex + _169;
  *_170 = 62;
  _171 = (sizetype) posl;
  _172 = lex + _171;
  *_172 = 0;
  pos.53_173 = pos;
  _174 = pos.53_173 + 1;
  pos = _174;
  estado_anterior = 0;
  D.5666 = 66;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5710>:
  _175 = (sizetype) posl;
  _176 = lex + _175;
  *_176 = 0;
  D.5666 = 49;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5706>:
  if (c == 60) goto <D.5711>; else goto <D.5712>;
  <D.5711>:
  pos.54_177 = pos;
  _178 = pos.54_177 + 1;
  pos = _178;
  pos.55_179 = pos;
  _180 = (sizetype) pos.55_179;
  _181 = st + _180;
  c = *_181;
  if (c == 61) goto <D.5713>; else goto <D.5714>;
  <D.5713>:
  posl.56_182 = posl;
  posl = posl.56_182 + 1;
  _183 = (sizetype) posl.56_182;
  _184 = lex + _183;
  *_184 = 61;
  _185 = (sizetype) posl;
  _186 = lex + _185;
  *_186 = 0;
  pos.57_187 = pos;
  _188 = pos.57_187 + 1;
  pos = _188;
  estado_anterior = 0;
  D.5666 = 58;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5714>:
  if (c == 60) goto <D.5715>; else goto <D.5716>;
  <D.5715>:
  posl.58_189 = posl;
  posl = posl.58_189 + 1;
  _190 = (sizetype) posl.58_189;
  _191 = lex + _190;
  *_191 = 60;
  _192 = (sizetype) posl;
  _193 = lex + _192;
  *_193 = 0;
  pos.59_194 = pos;
  _195 = pos.59_194 + 1;
  pos = _195;
  estado_anterior = 0;
  D.5666 = 65;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5716>:
  _196 = (sizetype) posl;
  _197 = lex + _196;
  *_197 = 0;
  D.5666 = 50;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5712>:
  if (c == 40) goto <D.5717>; else goto <D.5718>;
  <D.5717>:
  _198 = (sizetype) posl;
  _199 = lex + _198;
  *_199 = 0;
  pos.60_200 = pos;
  _201 = pos.60_200 + 1;
  pos = _201;
  estado_anterior = 0;
  D.5666 = 34;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5718>:
  if (c == 41) goto <D.5719>; else goto <D.5720>;
  <D.5719>:
  _202 = (sizetype) posl;
  _203 = lex + _202;
  *_203 = 0;
  pos.61_204 = pos;
  _205 = pos.61_204 + 1;
  pos = _205;
  estado_anterior = 0;
  D.5666 = 35;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5720>:
  if (c == 123) goto <D.5721>; else goto <D.5722>;
  <D.5721>:
  _206 = (sizetype) posl;
  _207 = lex + _206;
  *_207 = 0;
  pos.62_208 = pos;
  _209 = pos.62_208 + 1;
  pos = _209;
  estado_anterior = 0;
  D.5666 = 36;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5722>:
  if (c == 125) goto <D.5723>; else goto <D.5724>;
  <D.5723>:
  _210 = (sizetype) posl;
  _211 = lex + _210;
  *_211 = 0;
  pos.63_212 = pos;
  _213 = pos.63_212 + 1;
  pos = _213;
  estado_anterior = 0;
  D.5666 = 37;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5724>:
  if (c == 91) goto <D.5725>; else goto <D.5726>;
  <D.5725>:
  _214 = (sizetype) posl;
  _215 = lex + _214;
  *_215 = 0;
  pos.64_216 = pos;
  _217 = pos.64_216 + 1;
  pos = _217;
  estado_anterior = 0;
  D.5666 = 38;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5726>:
  if (c == 93) goto <D.5727>; else goto <D.5728>;
  <D.5727>:
  _218 = (sizetype) posl;
  _219 = lex + _218;
  *_219 = 0;
  pos.65_220 = pos;
  _221 = pos.65_220 + 1;
  pos = _221;
  estado_anterior = 0;
  D.5666 = 39;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5728>:
  if (c == 44) goto <D.5729>; else goto <D.5730>;
  <D.5729>:
  _222 = (sizetype) posl;
  _223 = lex + _222;
  *_223 = 0;
  pos.66_224 = pos;
  _225 = pos.66_224 + 1;
  pos = _225;
  estado_anterior = 0;
  D.5666 = 42;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5730>:
  if (c == 59) goto <D.5731>; else goto <D.5732>;
  <D.5731>:
  _226 = (sizetype) posl;
  _227 = lex + _226;
  *_227 = 0;
  pos.67_228 = pos;
  _229 = pos.67_228 + 1;
  pos = _229;
  estado_anterior = 0;
  D.5666 = 40;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5732>:
  if (c == 58) goto <D.5733>; else goto <D.5734>;
  <D.5733>:
  _230 = (sizetype) posl;
  _231 = lex + _230;
  *_231 = 0;
  pos.68_232 = pos;
  _233 = pos.68_232 + 1;
  pos = _233;
  estado_anterior = 0;
  D.5666 = 41;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5734>:
  if (c == 32) goto <D.5735>; else goto <D.5737>;
  <D.5737>:
  if (c == 10) goto <D.5735>; else goto <D.5736>;
  <D.5735>:
  pos.69_234 = pos;
  _235 = pos.69_234 + 1;
  pos = _235;
  posl = posl + -1;
  pos.70_236 = pos;
  posColuna = pos.70_236;
  <D.5736>:
  if (c == 127) goto <D.5738>; else goto <D.5739>;
  <D.5738>:
  pos.71_237 = pos;
  _238 = pos.71_237 + 1;
  pos = _238;
  posl = posl + -1;
  linha.72_239 = linha;
  _240 = linha.72_239 + 1;
  linha = _240;
  pos.73_241 = pos;
  subColuna = pos.73_241;
  pos.74_242 = pos;
  posColuna = pos.74_242;
  <D.5739>:
  if (c == 9) goto <D.5740>; else goto <D.5741>;
  <D.5740>:
  tab.75_243 = tab;
  _244 = tab.75_243 + 1;
  tab = _244;
  pos.76_245 = pos;
  _246 = pos.76_245 + 1;
  pos = _246;
  pos.77_247 = pos;
  posColuna = pos.77_247;
  posl = posl + -1;
  subColuna.78_248 = subColuna;
  _249 = subColuna.78_248 + -3;
  subColuna = _249;
  <D.5741>:
  if (c == 0) goto <D.5742>; else goto <D.5743>;
  <D.5742>:
  D.5666 = -1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5743>:
  goto <D.4985>;
  <D.4986>:
  if (c > 96) goto <D.5748>; else goto <D.5744>;
  <D.5748>:
  if (c <= 122) goto <D.5745>; else goto <D.5744>;
  <D.5744>:
  if (c > 64) goto <D.5749>; else goto <D.5746>;
  <D.5749>:
  if (c <= 90) goto <D.5745>; else goto <D.5746>;
  <D.5746>:
  if (c == 95) goto <D.5745>; else goto <D.5750>;
  <D.5750>:
  if (c > 47) goto <D.5751>; else goto <D.5747>;
  <D.5751>:
  if (c <= 57) goto <D.5745>; else goto <D.5747>;
  <D.5745>:
  pos.79_250 = pos;
  _251 = pos.79_250 + 1;
  pos = _251;
  goto <D.4985>;
  <D.5747>:
  posl = posl + -1;
  _252 = (sizetype) posl;
  _253 = lex + _252;
  *_253 = 0;
  estado_anterior = 1;
  D.5666 = palavra_reservada (lex);
  goto <D.5798>;
  <D.4987>:
  if (c > 47) goto <D.5752>; else goto <D.5753>;
  <D.5752>:
  if (c <= 57) goto <D.5754>; else goto <D.5755>;
  <D.5754>:
  pos.80_254 = pos;
  _255 = pos.80_254 + 1;
  pos = _255;
  goto <D.4985>;
  <D.5755>:
  <D.5753>:
  if (c == 46) goto <D.5756>; else goto <D.5757>;
  <D.5756>:
  pos.81_256 = pos;
  _257 = pos.81_256 + 1;
  pos = _257;
  estado = 3;
  estado_anterior = 2;
  goto <D.4985>;
  <D.5757>:
  if (c == 69) goto <D.5758>; else goto <D.5759>;
  <D.5758>:
  pos.82_258 = pos;
  _259 = pos.82_258 + 1;
  pos = _259;
  estado = 4;
  estado_anterior = 2;
  goto <D.4985>;
  <D.5759>:
  posl = posl + -1;
  _260 = (sizetype) posl;
  _261 = lex + _260;
  *_261 = 0;
  estado_anterior = 2;
  D.5666 = 80;
  goto <D.5798>;
  <D.4988>:
  if (c > 47) goto <D.5761>; else goto <D.5760>;
  <D.5761>:
  if (c <= 57) goto <D.5762>; else goto <D.5760>;
  <D.5762>:
  pos.83_262 = pos;
  _263 = pos.83_262 + 1;
  pos = _263;
  estado = 7;
  goto <D.4985>;
  <D.5760>:
  D.5666 = 101;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.4989>:
  if (c > 47) goto <D.5764>; else goto <D.5763>;
  <D.5764>:
  if (c <= 57) goto <D.5765>; else goto <D.5763>;
  <D.5765>:
  pos.84_264 = pos;
  _265 = pos.84_264 + 1;
  pos = _265;
  estado = 6;
  goto <D.4985>;
  <D.5763>:
  if (c == 45) goto <D.5766>; else goto <D.5768>;
  <D.5768>:
  if (c == 43) goto <D.5766>; else goto <D.5767>;
  <D.5766>:
  pos.85_266 = pos;
  _267 = pos.85_266 + 1;
  pos = _267;
  estado = 5;
  goto <D.4985>;
  <D.5767>:
  D.5666 = 100;
  goto <D.5798>;
  <D.4990>:
  if (c > 47) goto <D.5769>; else goto <D.5770>;
  <D.5769>:
  if (c <= 57) goto <D.5771>; else goto <D.5772>;
  <D.5771>:
  pos.86_268 = pos;
  _269 = pos.86_268 + 1;
  pos = _269;
  estado = 6;
  goto <D.4985>;
  <D.5772>:
  <D.5770>:
  D.5666 = 100;
  goto <D.5798>;
  <D.4991>:
  if (c > 47) goto <D.5773>; else goto <D.5774>;
  <D.5773>:
  if (c <= 57) goto <D.5775>; else goto <D.5776>;
  <D.5775>:
  pos.87_270 = pos;
  _271 = pos.87_270 + 1;
  pos = _271;
  goto <D.4985>;
  <D.5776>:
  <D.5774>:
  estado_anterior.88_272 = estado_anterior;
  if (estado_anterior.88_272 == 2) goto <D.5777>; else goto <D.5778>;
  <D.5777>:
  posl = posl + -1;
  _273 = (sizetype) posl;
  _274 = lex + _273;
  *_274 = 0;
  estado_anterior = 6;
  D.5666 = 80;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5778>:
  posl = posl + -1;
  _275 = (sizetype) posl;
  _276 = lex + _275;
  *_276 = 0;
  estado_anterior = 6;
  D.5666 = 81;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.4992>:
  if (c > 47) goto <D.5779>; else goto <D.5780>;
  <D.5779>:
  if (c <= 57) goto <D.5781>; else goto <D.5782>;
  <D.5781>:
  pos.89_277 = pos;
  _278 = pos.89_277 + 1;
  pos = _278;
  goto <D.4985>;
  <D.5782>:
  <D.5780>:
  if (c == 69) goto <D.5783>; else goto <D.5784>;
  <D.5783>:
  pos.90_279 = pos;
  _280 = pos.90_279 + 1;
  pos = _280;
  estado = 4;
  estado_anterior = 7;
  goto <D.4985>;
  <D.5784>:
  posl = posl + -1;
  _281 = (sizetype) posl;
  _282 = lex + _281;
  *_282 = 0;
  estado_anterior = 7;
  D.5666 = 81;
  goto <D.5798>;
  <D.4993>:
  if (c > 47) goto <D.5785>; else goto <D.5786>;
  <D.5785>:
  if (c <= 57) goto <D.5787>; else goto <D.5788>;
  <D.5787>:
  pos.91_283 = pos;
  _284 = pos.91_283 + 1;
  pos = _284;
  goto <D.4985>;
  <D.5788>:
  <D.5786>:
  if (c == 120) goto <D.5789>; else goto <D.5791>;
  <D.5791>:
  if (c == 88) goto <D.5789>; else goto <D.5790>;
  <D.5789>:
  pos.92_285 = pos;
  _286 = pos.92_285 + 1;
  pos = _286;
  estado = 9;
  estado_anterior = 8;
  goto <D.4985>;
  <D.5790>:
  posl = posl + -1;
  _287 = (sizetype) posl;
  _288 = lex + _287;
  *_288 = 0;
  D.5666 = 80;
  goto <D.5798>;
  <D.4994>:
  if (c > 47) goto <D.5793>; else goto <D.5792>;
  <D.5793>:
  if (c <= 57) goto <D.5794>; else goto <D.5792>;
  <D.5794>:
  pos.93_289 = pos;
  _290 = pos.93_289 + 1;
  pos = _290;
  estado_anterior = 9;
  goto <D.4985>;
  <D.5792>:
  estado_anterior.94_291 = estado_anterior;
  if (estado_anterior.94_291 == 8) goto <D.5795>; else goto <D.5796>;
  <D.5795>:
  D.5666 = 104;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5798>;
  <D.5796>:
  posl = posl + -1;
  _292 = (sizetype) posl;
  _293 = lex + _292;
  *_293 = 0;
  D.5666 = 80;
  goto <D.5798>;
  <D.4985>:
  <D.5797>:
  <D.4996>:
  if (fim == 0) goto <D.4995>; else goto <D.4997>;
  <D.4997>:
  D.5666 = -1;
  goto <D.5798>;
  <D.5798>:
  return D.5666;
}



;; Function getToken (getToken, funcdef_no=19, decl_uid=4998, cgraph_uid=19, symbol_order=35)

getToken ()
{
  posParser.95_1 = posParser;
  posParser.96_2 = posParser.95_1;
  _3 = posParser.96_2 + 1;
  posParser = _3;
  _4 = tksParser[posParser.96_2];
  tk = _4;
  posParser.97_5 = posParser;
  posParser.98_6 = posParser.97_5;
  _7 = posParser.98_6 + 1;
  posParser = _7;
  _8 = tksParser[posParser.98_6];
  linha = _8;
  posParser.99_9 = posParser;
  posParser.100_10 = posParser.99_9;
  _11 = posParser.100_10 + 1;
  posParser = _11;
  _12 = tksParser[posParser.100_10];
  coluna = _12;
  posParserLex.101_13 = posParserLex;
  posParserLex.102_14 = posParserLex.101_13;
  _15 = posParserLex.102_14 + 1;
  posParserLex = _15;
  _16 = &tksParserLex[posParserLex.102_14];
  strcpy (&lex, _16);
  return;
}



;; Function poetabsimb (poetabsimb, funcdef_no=20, decl_uid=5008, cgraph_uid=20, symbol_order=37)

poetabsimb (char * id, char * tipo)
{
  struct tabela * aux;

  aux = malloc (32);
  _1 = &aux->id;
  strcpy (_1, id);
  _2 = &aux->tipo;
  strcpy (_2, tipo);
  ts.103_3 = ts;
  aux->prox = ts.103_3;
  ts = aux;
  return;
}



;; Function verificaDuplicacao (verificaDuplicacao, funcdef_no=21, decl_uid=5013, cgraph_uid=21, symbol_order=38)

verificaDuplicacao (char * lex, struct tabela * tab)
{
  int D.5801;

  if (tab == 0B) goto <D.5799>; else goto <D.5800>;
  <D.5799>:
  D.5801 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5804>;
  <D.5800>:
  _1 = &tab->id;
  _2 = strcmp (_1, lex);
  if (_2 == 0) goto <D.5802>; else goto <D.5803>;
  <D.5802>:
  printf ("Variavel %s ja foi declarada\n", lex);
  coluna.104_3 = coluna;
  linha.105_4 = linha;
  printf ("Erro ocorreu na linha %d, coluna %d", linha.105_4, coluna.104_3);
  exit (0);
  <D.5803>:
  _5 = tab->prox;
  D.5801 = verificaDuplicacao (lex, _5);
  goto <D.5804>;
  <D.5804>:
  return D.5801;
}



;; Function consultaTipo (consultaTipo, funcdef_no=22, decl_uid=5018, cgraph_uid=22, symbol_order=39)

consultaTipo (char * id, char * Tipo, struct tabela * tab)
{
  if (tab == 0B) goto <D.5805>; else goto <D.5806>;
  <D.5805>:
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5809>;
  <D.5806>:
  _1 = &tab->id;
  _2 = strcmp (_1, id);
  if (_2 == 0) goto <D.5807>; else goto <D.5808>;
  <D.5807>:
  _3 = &tab->tipo;
  strcpy (Tipo, _3);
  <D.5808>:
  _4 = tab->prox;
  consultaTipo (id, Tipo, _4);
  <D.5809>:
  return;
}



;; Function geralabel (geralabel, funcdef_no=23, decl_uid=5021, cgraph_uid=23, symbol_order=40)

geralabel (char * label)
{
  static int numlabel = 0;

  numlabel.106_1 = numlabel;
  numlabel.107_2 = numlabel.106_1;
  _3 = numlabel.107_2 + 1;
  numlabel = _3;
  sprintf (label, "LB%03d", numlabel.107_2);
  return;
}



;; Function geratemp (geratemp, funcdef_no=24, decl_uid=5025, cgraph_uid=24, symbol_order=41)

geratemp (char * temp)
{
  static int numtemp = 0;

  numtemp.108_1 = numtemp;
  numtemp.109_2 = numtemp.108_1;
  _3 = numtemp.109_2 + 1;
  numtemp = _3;
  sprintf (temp, "T%03d", numtemp.109_2);
  return;
}



;; Function PROGC (PROGC, funcdef_no=25, decl_uid=4757, cgraph_uid=25, symbol_order=42)

PROGC ()
{
  int D.5812;

  _1 = LD ();
  if (_1 != 0) goto <D.5810>; else goto <D.5811>;
  <D.5810>:
  D.5812 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5813>;
  <D.5811>:
  D.5812 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5813>;
  <D.5813>:
  return D.5812;
}



;; Function LD (LD, funcdef_no=26, decl_uid=4758, cgraph_uid=26, symbol_order=43)

LD ()
{
  int D.5818;

  _1 = DEC ();
  if (_1 != 0) goto <D.5814>; else goto <D.5815>;
  <D.5814>:
  _2 = RLD ();
  if (_2 != 0) goto <D.5816>; else goto <D.5817>;
  <D.5816>:
  D.5818 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5817>:
  D.5818 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5815>:
  D.5818 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5819>;
  <D.5819>:
  return D.5818;
}



;; Function RLD (RLD, funcdef_no=27, decl_uid=4759, cgraph_uid=27, symbol_order=44)

RLD (char * RLD_c)
{
  char LD_c[1000];
  int D.5822;

  _1 = LD (&LD_c);
  if (_1 != 0) goto <D.5820>; else goto <D.5821>;
  <D.5820>:
  strcpy (RLD_c, &LD_c);
  D.5822 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5824>;
  <D.5821>:
  D.5822 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5824>;
  <D.5824>:
  LD_c = {CLOBBER};
  goto <D.5823>;
  <D.5823>:
  return D.5822;
}



;; Function DEC (DEC, funcdef_no=28, decl_uid=4760, cgraph_uid=28, symbol_order=45)

DEC ()
{
  char Tipo_t[10];
  char RDEC_t[10];
  int D.5833;

  _1 = TIPO (&Tipo_t);
  if (_1 != 0) goto <D.5825>; else goto <D.5826>;
  <D.5825>:
  strcpy (&RDEC_t, &Tipo_t);
  tk.110_2 = tk;
  if (tk.110_2 == 1) goto <D.5827>; else goto <D.5828>;
  <D.5827>:
  ts.111_3 = ts;
  _4 = verificaDuplicacao (&lex, ts.111_3);
  if (_4 != 0) goto <D.5829>; else goto <D.5830>;
  <D.5829>:
  poetabsimb (&lex, &Tipo_t);
  <D.5830>:
  getToken ();
  _5 = RDEC (&RDEC_t);
  if (_5 != 0) goto <D.5831>; else goto <D.5832>;
  <D.5831>:
  D.5833 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5835>;
  <D.5832>:
  D.5833 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5835>;
  <D.5828>:
  coluna.112_6 = coluna;
  linha.113_7 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.113_7, coluna.112_6);
  D.5833 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5835>;
  <D.5826>:
  D.5833 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5835>;
  <D.5835>:
  RDEC_t = {CLOBBER};
  Tipo_t = {CLOBBER};
  goto <D.5834>;
  <D.5834>:
  return D.5833;
}



;; Function RDEC (RDEC, funcdef_no=29, decl_uid=4761, cgraph_uid=29, symbol_order=46)

RDEC ()
{
  char DV_t[10];
  char DF_c[1000];
  int D.5840;

  tk.114_1 = tk;
  if (tk.114_1 == 42) goto <D.5836>; else goto <D.5837>;
  <D.5836>:
  getToken ();
  _2 = DV (&DV_t);
  if (_2 != 0) goto <D.5838>; else goto <D.5839>;
  <D.5838>:
  D.5840 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5839>:
  D.5840 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5837>:
  tk.115_3 = tk;
  if (tk.115_3 == 34) goto <D.5841>; else goto <D.5842>;
  <D.5841>:
  getToken ();
  _4 = DF (&DF_c);
  if (_4 != 0) goto <D.5843>; else goto <D.5844>;
  <D.5843>:
  D.5840 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5844>:
  D.5840 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5842>:
  tk.116_5 = tk;
  if (tk.116_5 == 40) goto <D.5845>; else goto <D.5846>;
  <D.5845>:
  getToken ();
  D.5840 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5846>:
  tk.117_6 = tk;
  if (tk.117_6 == 43) goto <D.5847>; else goto <D.5848>;
  <D.5847>:
  getToken ();
  tk.118_7 = tk;
  if (tk.118_7 == 80) goto <D.5849>; else goto <D.5850>;
  <D.5849>:
  getToken ();
  tk.119_8 = tk;
  if (tk.119_8 == 40) goto <D.5851>; else goto <D.5852>;
  <D.5851>:
  getToken ();
  D.5840 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5852>:
  coluna.120_9 = coluna;
  linha.121_10 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.121_10, coluna.120_9);
  D.5840 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5850>:
  coluna.122_11 = coluna;
  linha.123_12 = linha;
  printf ("Erro: esperava token contante inteira na linha %d coluna %d\n", linha.123_12, coluna.122_11);
  D.5840 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5848>:
  coluna.124_13 = coluna;
  linha.125_14 = linha;
  printf ("Erro: esperava token \';\', \')\' ou \',\' na linha %d coluna %d\n", linha.125_14, coluna.124_13);
  D.5840 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5854>;
  <D.5854>:
  DF_c = {CLOBBER};
  DV_t = {CLOBBER};
  goto <D.5853>;
  <D.5853>:
  return D.5840;
}



;; Function DV (DV, funcdef_no=30, decl_uid=4763, cgraph_uid=30, symbol_order=47)

DV (char * DV_t)
{
  char RDV_t[10];
  int D.5861;

  tk.126_1 = tk;
  if (tk.126_1 == 1) goto <D.5855>; else goto <D.5856>;
  <D.5855>:
  strcpy (&RDV_t, DV_t);
  ts.127_2 = ts;
  _3 = verificaDuplicacao (&lex, ts.127_2);
  if (_3 != 0) goto <D.5857>; else goto <D.5858>;
  <D.5857>:
  poetabsimb (&lex, DV_t);
  <D.5858>:
  getToken ();
  _4 = RDV (&RDV_t);
  if (_4 != 0) goto <D.5859>; else goto <D.5860>;
  <D.5859>:
  D.5861 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5863>;
  <D.5860>:
  D.5861 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5863>;
  <D.5856>:
  coluna.128_5 = coluna;
  linha.129_6 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.129_6, coluna.128_5);
  D.5861 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5863>;
  <D.5863>:
  RDV_t = {CLOBBER};
  goto <D.5862>;
  <D.5862>:
  return D.5861;
}



;; Function RDV (RDV, funcdef_no=31, decl_uid=4765, cgraph_uid=31, symbol_order=48)

RDV (char * RDV_t)
{
  char DV_t[10];
  int D.5868;

  tk.130_1 = tk;
  if (tk.130_1 == 42) goto <D.5864>; else goto <D.5865>;
  <D.5864>:
  strcpy (&DV_t, RDV_t);
  getToken ();
  _2 = DV (&DV_t);
  if (_2 != 0) goto <D.5866>; else goto <D.5867>;
  <D.5866>:
  D.5868 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5872>;
  <D.5867>:
  D.5868 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5872>;
  <D.5865>:
  tk.131_3 = tk;
  if (tk.131_3 == 40) goto <D.5869>; else goto <D.5870>;
  <D.5869>:
  getToken ();
  D.5868 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5872>;
  <D.5870>:
  coluna.132_4 = coluna;
  linha.133_5 = linha;
  printf ("Erro: esperava token \',\' ou \';\' na linha %d coluna %d\n", linha.133_5, coluna.132_4);
  D.5868 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5872>;
  <D.5872>:
  DV_t = {CLOBBER};
  goto <D.5871>;
  <D.5871>:
  return D.5868;
}



;; Function TIPO (TIPO, funcdef_no=32, decl_uid=4767, cgraph_uid=32, symbol_order=49)

TIPO (char * Tipo_t)
{
  char RTIPOLONG_t[10];
  char RTIPOSHORT_t[10];
  char RTIPOSINAL_t[10];
  char RTIPOLONG_s[10];
  char RTIPOSHORT_s[10];
  char RTIPOSINAL_s[10];
  int D.5879;

  tk.134_1 = tk;
  if (tk.134_1 == 69) goto <D.5873>; else goto <D.5875>;
  <D.5875>:
  tk.135_2 = tk;
  if (tk.135_2 == 4) goto <D.5873>; else goto <D.5876>;
  <D.5876>:
  tk.136_3 = tk;
  if (tk.136_3 == 6) goto <D.5873>; else goto <D.5877>;
  <D.5877>:
  tk.137_4 = tk;
  if (tk.137_4 == 7) goto <D.5873>; else goto <D.5874>;
  <D.5873>:
  tk.138_5 = tk;
  switch (tk.138_5) <default: <D.5878>, case 4: <D.5063>, case 6: <D.5064>, case 7: <D.5065>, case 69: <D.5061>>
  <D.5061>:
  __builtin_memcpy (Tipo_t, "char", 5);
  goto <D.5062>;
  <D.5063>:
  __builtin_memcpy (Tipo_t, "int", 4);
  goto <D.5062>;
  <D.5064>:
  __builtin_memcpy (Tipo_t, "float", 6);
  goto <D.5062>;
  <D.5065>:
  __builtin_memcpy (Tipo_t, "double", 7);
  goto <D.5062>;
  <D.5062>:
  <D.5878>:
  getToken ();
  D.5879 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5874>:
  tk.139_6 = tk;
  if (tk.139_6 == 26) goto <D.5880>; else goto <D.5882>;
  <D.5882>:
  tk.140_7 = tk;
  if (tk.140_7 == 27) goto <D.5880>; else goto <D.5881>;
  <D.5880>:
  tk.141_8 = tk;
  switch (tk.141_8) <default: <D.5883>, case 26: <D.5066>, case 27: <D.5068>>
  <D.5066>:
  __builtin_memcpy (&RTIPOSINAL_s, "signed", 7);
  strcpy (&RTIPOSINAL_t, Tipo_t);
  goto <D.5067>;
  <D.5068>:
  __builtin_memcpy (&RTIPOSINAL_s, "unsigned", 9);
  strcpy (&RTIPOSINAL_t, Tipo_t);
  goto <D.5067>;
  <D.5067>:
  <D.5883>:
  getToken ();
  _9 = RTIPOSINAL (&RTIPOSINAL_s, &RTIPOSINAL_t);
  if (_9 != 0) goto <D.5884>; else goto <D.5885>;
  <D.5884>:
  strcpy (Tipo_t, &RTIPOSINAL_t);
  D.5879 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5885>:
  D.5879 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5881>:
  tk.142_10 = tk;
  if (tk.142_10 == 3) goto <D.5886>; else goto <D.5887>;
  <D.5886>:
  __builtin_memcpy (&RTIPOSHORT_s, "short", 6);
  getToken ();
  _11 = RTIPOSHORT (&RTIPOSHORT_s, &RTIPOSHORT_t);
  if (_11 != 0) goto <D.5888>; else goto <D.5889>;
  <D.5888>:
  strcpy (Tipo_t, &RTIPOSHORT_t);
  D.5879 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5889>:
  D.5879 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5887>:
  tk.143_12 = tk;
  if (tk.143_12 == 5) goto <D.5890>; else goto <D.5891>;
  <D.5890>:
  __builtin_memcpy (&RTIPOLONG_s, "long", 5);
  getToken ();
  _13 = RTIPOLONG (&RTIPOLONG_s, &RTIPOLONG_t);
  if (_13 != 0) goto <D.5892>; else goto <D.5893>;
  <D.5892>:
  strcpy (Tipo_t, &RTIPOLONG_t);
  D.5879 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5893>:
  D.5879 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5891>:
  D.5879 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5895>;
  <D.5895>:
  RTIPOSINAL_s = {CLOBBER};
  RTIPOSHORT_s = {CLOBBER};
  RTIPOLONG_s = {CLOBBER};
  RTIPOSINAL_t = {CLOBBER};
  RTIPOSHORT_t = {CLOBBER};
  RTIPOLONG_t = {CLOBBER};
  goto <D.5894>;
  <D.5894>:
  return D.5879;
}



;; Function RTIPOSINAL (RTIPOSINAL, funcdef_no=33, decl_uid=4770, cgraph_uid=33, symbol_order=50)

RTIPOSINAL (char * RTIPOSINAL_s, char * RTIPOSINAL_t)
{
  char RTIPOSINAL2_t[10];
  char RTIPOSINAL2_s[10];
  long long unsigned int D.5919;
  long long unsigned int D.5914;
  int D.5908;
  long long unsigned int D.5906;
  long long unsigned int D.5901;
  char * D.5920;
  char * D.5915;
  char * D.5907;
  char * D.5902;

  tk.144_1 = tk;
  if (tk.144_1 == 69) goto <D.5896>; else goto <D.5898>;
  <D.5898>:
  tk.145_2 = tk;
  if (tk.145_2 == 4) goto <D.5896>; else goto <D.5897>;
  <D.5896>:
  tk.146_3 = tk;
  if (tk.146_3 == 69) goto <D.5899>; else goto <D.5900>;
  <D.5899>:
  D.5901 = __builtin_strlen (RTIPOSINAL_s);
  D.5902 = RTIPOSINAL_s + D.5901;
  __builtin_memcpy (D.5902, " char", 6);
  strcpy (RTIPOSINAL_t, RTIPOSINAL_s);
  goto <D.5903>;
  <D.5900>:
  tk.147_4 = tk;
  if (tk.147_4 == 4) goto <D.5904>; else goto <D.5905>;
  <D.5904>:
  D.5906 = __builtin_strlen (RTIPOSINAL_s);
  D.5907 = RTIPOSINAL_s + D.5906;
  __builtin_memcpy (D.5907, " int", 5);
  strcpy (RTIPOSINAL_t, RTIPOSINAL_s);
  <D.5905>:
  <D.5903>:
  getToken ();
  D.5908 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5924>;
  <D.5897>:
  tk.148_5 = tk;
  if (tk.148_5 == 3) goto <D.5909>; else goto <D.5911>;
  <D.5911>:
  tk.149_6 = tk;
  if (tk.149_6 == 5) goto <D.5909>; else goto <D.5910>;
  <D.5909>:
  tk.150_7 = tk;
  if (tk.150_7 == 3) goto <D.5912>; else goto <D.5913>;
  <D.5912>:
  D.5914 = __builtin_strlen (RTIPOSINAL_s);
  D.5915 = RTIPOSINAL_s + D.5914;
  __builtin_memcpy (D.5915, " short", 7);
  strcpy (&RTIPOSINAL2_s, RTIPOSINAL_s);
  goto <D.5916>;
  <D.5913>:
  tk.151_8 = tk;
  if (tk.151_8 == 5) goto <D.5917>; else goto <D.5918>;
  <D.5917>:
  D.5919 = __builtin_strlen (RTIPOSINAL_s);
  D.5920 = RTIPOSINAL_s + D.5919;
  __builtin_memcpy (D.5920, " long", 6);
  strcpy (&RTIPOSINAL2_s, RTIPOSINAL_s);
  <D.5918>:
  <D.5916>:
  getToken ();
  _9 = RTIPOSINAL2 (&RTIPOSINAL2_s, &RTIPOSINAL2_t);
  if (_9 != 0) goto <D.5921>; else goto <D.5922>;
  <D.5921>:
  strcpy (RTIPOSINAL_t, &RTIPOSINAL2_t);
  D.5908 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5924>;
  <D.5922>:
  D.5908 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5924>;
  <D.5910>:
  D.5908 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5924>;
  <D.5924>:
  RTIPOSINAL2_s = {CLOBBER};
  RTIPOSINAL2_t = {CLOBBER};
  goto <D.5923>;
  <D.5923>:
  return D.5908;
}



;; Function RTIPOSINAL2 (RTIPOSINAL2, funcdef_no=34, decl_uid=4773, cgraph_uid=34, symbol_order=51)

RTIPOSINAL2 (char * RTIPOSINAL2_s, char * RTIPOSINAL2_t)
{
  int D.5929;
  long long unsigned int D.5927;
  char * D.5928;

  tk.152_1 = tk;
  if (tk.152_1 == 4) goto <D.5925>; else goto <D.5926>;
  <D.5925>:
  D.5927 = __builtin_strlen (RTIPOSINAL2_s);
  D.5928 = RTIPOSINAL2_s + D.5927;
  __builtin_memcpy (D.5928, " int", 5);
  strcpy (RTIPOSINAL2_t, RTIPOSINAL2_s);
  getToken ();
  D.5929 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5930>;
  <D.5926>:
  coluna.153_2 = coluna;
  linha.154_3 = linha;
  printf ("Erro: esperava token \'int\' na linha %d coluna %d\n", linha.154_3, coluna.153_2);
  D.5929 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5930>;
  <D.5930>:
  return D.5929;
}



;; Function RTIPOSHORT (RTIPOSHORT, funcdef_no=35, decl_uid=4776, cgraph_uid=35, symbol_order=52)

RTIPOSHORT (char * RTIPOSHORT_s, char * RTIPOSHORT_t)
{
  int D.5935;
  long long unsigned int D.5933;
  char * D.5934;

  tk.155_1 = tk;
  if (tk.155_1 == 4) goto <D.5931>; else goto <D.5932>;
  <D.5931>:
  D.5933 = __builtin_strlen (RTIPOSHORT_s);
  D.5934 = RTIPOSHORT_s + D.5933;
  __builtin_memcpy (D.5934, " int", 5);
  strcpy (RTIPOSHORT_t, RTIPOSHORT_s);
  getToken ();
  D.5935 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5936>;
  <D.5932>:
  D.5935 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5936>;
  <D.5936>:
  return D.5935;
}



;; Function RTIPOLONG (RTIPOLONG, funcdef_no=36, decl_uid=4779, cgraph_uid=36, symbol_order=53)

RTIPOLONG (char * RTIPOLONG_s, char * RTIPOLONG_t)
{
  char RTIPOLONG2_s[10];
  char RTIPOLONG2_t[10];
  long long unsigned int D.5952;
  int D.5949;
  long long unsigned int D.5947;
  long long unsigned int D.5942;
  char * D.5953;
  char * D.5948;
  char * D.5943;

  tk.156_1 = tk;
  if (tk.156_1 == 4) goto <D.5937>; else goto <D.5939>;
  <D.5939>:
  tk.157_2 = tk;
  if (tk.157_2 == 7) goto <D.5937>; else goto <D.5938>;
  <D.5937>:
  tk.158_3 = tk;
  if (tk.158_3 == 4) goto <D.5940>; else goto <D.5941>;
  <D.5940>:
  D.5942 = __builtin_strlen (RTIPOLONG_s);
  D.5943 = RTIPOLONG_s + D.5942;
  __builtin_memcpy (D.5943, " int", 5);
  strcpy (RTIPOLONG_t, RTIPOLONG_s);
  goto <D.5944>;
  <D.5941>:
  tk.159_4 = tk;
  if (tk.159_4 == 7) goto <D.5945>; else goto <D.5946>;
  <D.5945>:
  D.5947 = __builtin_strlen (RTIPOLONG_s);
  D.5948 = RTIPOLONG_s + D.5947;
  __builtin_memcpy (D.5948, " char", 6);
  strcpy (RTIPOLONG_t, RTIPOLONG_s);
  <D.5946>:
  <D.5944>:
  getToken ();
  D.5949 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5957>;
  <D.5938>:
  tk.160_5 = tk;
  if (tk.160_5 == 5) goto <D.5950>; else goto <D.5951>;
  <D.5950>:
  D.5952 = __builtin_strlen (RTIPOLONG_s);
  D.5953 = RTIPOLONG_s + D.5952;
  __builtin_memcpy (D.5953, " double", 8);
  strcpy (&RTIPOLONG2_s, RTIPOLONG_s);
  getToken ();
  _6 = RTIPOLONG2 (&RTIPOLONG2_s, &RTIPOLONG2_t);
  if (_6 != 0) goto <D.5954>; else goto <D.5955>;
  <D.5954>:
  strcpy (RTIPOLONG_t, &RTIPOLONG2_t);
  D.5949 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5957>;
  <D.5955>:
  D.5949 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5957>;
  <D.5951>:
  D.5949 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5957>;
  <D.5957>:
  RTIPOLONG2_t = {CLOBBER};
  RTIPOLONG2_s = {CLOBBER};
  goto <D.5956>;
  <D.5956>:
  return D.5949;
}



;; Function RTIPOLONG2 (RTIPOLONG2, funcdef_no=37, decl_uid=4782, cgraph_uid=37, symbol_order=54)

RTIPOLONG2 (char * RTIPOLONG2_s, char * RTIPOLONG2_t)
{
  int D.5962;
  long long unsigned int D.5960;
  char * D.5961;

  tk.161_1 = tk;
  if (tk.161_1 == 4) goto <D.5958>; else goto <D.5959>;
  <D.5958>:
  D.5960 = __builtin_strlen (RTIPOLONG2_s);
  D.5961 = RTIPOLONG2_s + D.5960;
  __builtin_memcpy (D.5961, " int", 5);
  strcpy (RTIPOLONG2_t, RTIPOLONG2_s);
  getToken ();
  D.5962 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5963>;
  <D.5959>:
  D.5962 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5963>;
  <D.5963>:
  return D.5962;
}



;; Function DF (DF, funcdef_no=38, decl_uid=4783, cgraph_uid=38, symbol_order=55)

DF ()
{
  char CORPO_c[1000];
  int D.5974;

  _1 = LP ();
  if (_1 != 0) goto <D.5964>; else goto <D.5965>;
  <D.5964>:
  tk.162_2 = tk;
  if (tk.162_2 == 35) goto <D.5966>; else goto <D.5967>;
  <D.5966>:
  getToken ();
  tk.163_3 = tk;
  if (tk.163_3 == 36) goto <D.5968>; else goto <D.5969>;
  <D.5968>:
  getToken ();
  _4 = CORPO (&CORPO_c);
  if (_4 != 0) goto <D.5970>; else goto <D.5971>;
  <D.5970>:
  tk.164_5 = tk;
  if (tk.164_5 == 37) goto <D.5972>; else goto <D.5973>;
  <D.5972>:
  getToken ();
  D.5974 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5973>:
  coluna.165_6 = coluna;
  linha.166_7 = linha;
  printf ("Erro: esperava token \'}\' na linha %d coluna %d\n", linha.166_7, coluna.165_6);
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5971>:
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5969>:
  coluna.167_8 = coluna;
  linha.168_9 = linha;
  printf ("Erro: esperava token \'{\' na linha %d coluna %d\n", linha.168_9, coluna.167_8);
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5967>:
  coluna.169_10 = coluna;
  linha.170_11 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.170_11, coluna.169_10);
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5965>:
  D.5974 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5976>;
  <D.5976>:
  CORPO_c = {CLOBBER};
  goto <D.5975>;
  <D.5975>:
  return D.5974;
}



;; Function LP (LP, funcdef_no=39, decl_uid=4784, cgraph_uid=39, symbol_order=56)

LP ()
{
  char TIPO_t[10];
  int D.5985;

  _1 = TIPO (&TIPO_t);
  if (_1 != 0) goto <D.5977>; else goto <D.5978>;
  <D.5977>:
  tk.171_2 = tk;
  if (tk.171_2 == 1) goto <D.5979>; else goto <D.5980>;
  <D.5979>:
  ts.172_3 = ts;
  _4 = verificaDuplicacao (&lex, ts.172_3);
  if (_4 != 0) goto <D.5981>; else goto <D.5982>;
  <D.5981>:
  poetabsimb (&lex, &TIPO_t);
  <D.5982>:
  getToken ();
  _5 = RLP ();
  if (_5 != 0) goto <D.5983>; else goto <D.5984>;
  <D.5983>:
  D.5985 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5987>;
  <D.5984>:
  D.5985 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5987>;
  <D.5980>:
  coluna.173_6 = coluna;
  linha.174_7 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.174_7, coluna.173_6);
  D.5985 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5987>;
  <D.5978>:
  D.5985 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5987>;
  <D.5987>:
  TIPO_t = {CLOBBER};
  goto <D.5986>;
  <D.5986>:
  return D.5985;
}



;; Function RLP (RLP, funcdef_no=40, decl_uid=4785, cgraph_uid=40, symbol_order=57)

RLP ()
{
  char TIPO_t[10];
  int D.5998;

  tk.175_1 = tk;
  if (tk.175_1 == 42) goto <D.5988>; else goto <D.5989>;
  <D.5988>:
  getToken ();
  _2 = TIPO (&TIPO_t);
  if (_2 != 0) goto <D.5990>; else goto <D.5991>;
  <D.5990>:
  tk.176_3 = tk;
  if (tk.176_3 == 1) goto <D.5992>; else goto <D.5993>;
  <D.5992>:
  ts.177_4 = ts;
  _5 = verificaDuplicacao (&lex, ts.177_4);
  if (_5 != 0) goto <D.5994>; else goto <D.5995>;
  <D.5994>:
  poetabsimb (&lex, &TIPO_t);
  <D.5995>:
  getToken ();
  _6 = RLP ();
  if (_6 != 0) goto <D.5996>; else goto <D.5997>;
  <D.5996>:
  D.5998 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6000>;
  <D.5997>:
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6000>;
  <D.5993>:
  coluna.178_7 = coluna;
  linha.179_8 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.179_8, coluna.178_7);
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6000>;
  <D.5991>:
  D.5998 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6000>;
  <D.5989>:
  D.5998 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6000>;
  <D.6000>:
  TIPO_t = {CLOBBER};
  goto <D.5999>;
  <D.5999>:
  return D.5998;
}



;; Function CORPO (CORPO, funcdef_no=41, decl_uid=4787, cgraph_uid=41, symbol_order=58)

CORPO (char * CORPO_c)
{
  char LCD_c[1000];
  int D.6003;

  _1 = LCD (&LCD_c);
  if (_1 != 0) goto <D.6001>; else goto <D.6002>;
  <D.6001>:
  strcpy (CORPO_c, &LCD_c);
  D.6003 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6005>;
  <D.6002>:
  D.6003 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6005>;
  <D.6005>:
  LCD_c = {CLOBBER};
  goto <D.6004>;
  <D.6004>:
  return D.6003;
}



;; Function LCD (LCD, funcdef_no=42, decl_uid=4789, cgraph_uid=42, symbol_order=59)

LCD (char * LCD_c)
{
  char LCDLinha_c[1000];
  char COM_c[1000];
  char TIPO_t[10];
  char DV_t[10];
  int D.6010;

  MEM[(char * {ref-all})&LCDLinha_c] = 0;
  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.6006>; else goto <D.6007>;
  <D.6006>:
  _2 = LCD (&LCDLinha_c);
  if (_2 != 0) goto <D.6008>; else goto <D.6009>;
  <D.6008>:
  sprintf (LCD_c, "%s%s", &COM_c, &LCDLinha_c);
  D.6010 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6018>;
  <D.6009>:
  D.6010 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6018>;
  <D.6007>:
  _3 = TIPO (&TIPO_t);
  if (_3 != 0) goto <D.6011>; else goto <D.6012>;
  <D.6011>:
  strcpy (&DV_t, &TIPO_t);
  _4 = DV (&DV_t);
  if (_4 != 0) goto <D.6013>; else goto <D.6014>;
  <D.6013>:
  _5 = LCD (&LCDLinha_c);
  if (_5 != 0) goto <D.6015>; else goto <D.6016>;
  <D.6015>:
  strcpy (LCD_c, &LCDLinha_c);
  D.6010 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6018>;
  <D.6016>:
  D.6010 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6018>;
  <D.6014>:
  D.6010 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6018>;
  <D.6012>:
  D.6010 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6018>;
  <D.6018>:
  DV_t = {CLOBBER};
  TIPO_t = {CLOBBER};
  COM_c = {CLOBBER};
  LCDLinha_c = {CLOBBER};
  goto <D.6017>;
  <D.6017>:
  return D.6010;
}



;; Function COM (COM, funcdef_no=43, decl_uid=4791, cgraph_uid=43, symbol_order=60)

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
  int D.6023;

  _1 = E (&E_tp, &E_p, &E_c);
  if (_1 != 0) goto <D.6019>; else goto <D.6020>;
  <D.6019>:
  tk.180_2 = tk;
  if (tk.180_2 == 40) goto <D.6021>; else goto <D.6022>;
  <D.6021>:
  strcpy (COM_c, &E_c);
  getToken ();
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6022>:
  coluna.181_3 = coluna;
  linha.182_4 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.182_4, coluna.181_3);
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6020>:
  _5 = COMWHILE (&COMWHILE_c);
  if (_5 != 0) goto <D.6024>; else goto <D.6025>;
  <D.6024>:
  strcpy (COM_c, &COMWHILE_c);
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6025>:
  _6 = COMDOWHILE (&COMDOWHILE_c);
  if (_6 != 0) goto <D.6026>; else goto <D.6027>;
  <D.6026>:
  strcpy (COM_c, &COMDOWHILE_c);
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6027>:
  _7 = COMIF (&COMIF_c);
  if (_7 != 0) goto <D.6028>; else goto <D.6029>;
  <D.6028>:
  strcpy (COM_c, &COMIF_c);
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6029>:
  _8 = COMFOR (&COMFOR_c);
  if (_8 != 0) goto <D.6030>; else goto <D.6031>;
  <D.6030>:
  strcpy (COM_c, &COMFOR_c);
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6031>:
  _9 = COMSWITCH ();
  if (_9 != 0) goto <D.6032>; else goto <D.6033>;
  <D.6032>:
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6033>:
  tk.183_10 = tk;
  if (tk.183_10 == 25) goto <D.6034>; else goto <D.6035>;
  <D.6034>:
  getToken ();
  tk.184_11 = tk;
  if (tk.184_11 == 40) goto <D.6036>; else goto <D.6037>;
  <D.6036>:
  getToken ();
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6037>:
  coluna.185_12 = coluna;
  linha.186_13 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.186_13, coluna.185_12);
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6035>:
  tk.187_14 = tk;
  if (tk.187_14 == 10) goto <D.6038>; else goto <D.6039>;
  <D.6038>:
  laco.188_15 = laco;
  if (laco.188_15 == 0) goto <D.6040>; else goto <D.6041>;
  <D.6040>:
  printf ("Erro: comando break fora de laco de repeticao");
  exit (0);
  <D.6041>:
  getToken ();
  tk.189_16 = tk;
  if (tk.189_16 == 40) goto <D.6042>; else goto <D.6043>;
  <D.6042>:
  getToken ();
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6043>:
  coluna.190_17 = coluna;
  linha.191_18 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.191_18, coluna.190_17);
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6039>:
  tk.192_19 = tk;
  if (tk.192_19 == 18) goto <D.6044>; else goto <D.6045>;
  <D.6044>:
  laco.193_20 = laco;
  if (laco.193_20 == 0) goto <D.6046>; else goto <D.6047>;
  <D.6046>:
  printf ("Erro: comando continue fora de laco de repeticao");
  exit (0);
  <D.6047>:
  getToken ();
  tk.194_21 = tk;
  if (tk.194_21 == 40) goto <D.6048>; else goto <D.6049>;
  <D.6048>:
  getToken ();
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6049>:
  coluna.195_22 = coluna;
  linha.196_23 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.196_23, coluna.195_22);
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6045>:
  tk.197_24 = tk;
  if (tk.197_24 == 36) goto <D.6050>; else goto <D.6051>;
  <D.6050>:
  getToken ();
  _25 = LCD (&LCD_c);
  if (_25 != 0) goto <D.6052>; else goto <D.6053>;
  <D.6052>:
  tk.198_26 = tk;
  if (tk.198_26 == 37) goto <D.6054>; else goto <D.6055>;
  <D.6054>:
  strcpy (COM_c, &LCD_c);
  getToken ();
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6055>:
  coluna.199_27 = coluna;
  linha.200_28 = linha;
  printf ("Erro: esperava token \'}\' na linha %d coluna %d\n", linha.200_28, coluna.199_27);
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6053>:
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6051>:
  _29 = TIPO (&TIPO_t);
  if (_29 != 0) goto <D.6056>; else goto <D.6057>;
  <D.6056>:
  tk.201_30 = tk;
  if (tk.201_30 == 1) goto <D.6058>; else goto <D.6059>;
  <D.6058>:
  ts.202_31 = ts;
  _32 = verificaDuplicacao (&lex, ts.202_31);
  if (_32 != 0) goto <D.6060>; else goto <D.6061>;
  <D.6060>:
  poetabsimb (&lex, &TIPO_t);
  <D.6061>:
  getToken ();
  _33 = RDEC ();
  if (_33 != 0) goto <D.6062>; else goto <D.6063>;
  <D.6062>:
  strcpy (COM_c, &RDEC_c);
  D.6023 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6063>:
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6059>:
  coluna.203_34 = coluna;
  linha.204_35 = linha;
  printf ("Erro: esperava token \'id\' na linha %d coluna %d\n", linha.204_35, coluna.203_34);
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6057>:
  D.6023 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6065>;
  <D.6065>:
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
  goto <D.6064>;
  <D.6064>:
  return D.6023;
}



;; Function COMIF (COMIF, funcdef_no=44, decl_uid=4793, cgraph_uid=44, symbol_order=61)

COMIF (char * COMIF_c)
{
  char labelfim[10];
  char labelelse[10];
  char RIF_c[1000];
  char COM_c[1000];
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.6082;
  const unsigned char D.6078;

  MEM[(char * {ref-all})&RIF_c] = 0;
  tk.205_1 = tk;
  if (tk.205_1 == 11) goto <D.6066>; else goto <D.6067>;
  <D.6066>:
  getToken ();
  tk.206_2 = tk;
  if (tk.206_2 == 34) goto <D.6068>; else goto <D.6069>;
  <D.6068>:
  getToken ();
  _3 = E (&E_tp, &E_p, &E_c);
  if (_3 != 0) goto <D.6070>; else goto <D.6071>;
  <D.6070>:
  tk.207_4 = tk;
  if (tk.207_4 == 35) goto <D.6072>; else goto <D.6073>;
  <D.6072>:
  getToken ();
  _5 = COM (&COM_c);
  if (_5 != 0) goto <D.6074>; else goto <D.6075>;
  <D.6074>:
  _6 = RIF (&RIF_c);
  if (_6 != 0) goto <D.6076>; else goto <D.6077>;
  <D.6076>:
  geralabel (&labelelse);
  geralabel (&labelfim);
  D.6078 = MEM[(const unsigned char * {ref-all})&RIF_c];
  _7 = (int) D.6078;
  if (_7 != 0) goto <D.6079>; else goto <D.6080>;
  <D.6079>:
  sprintf (COMIF_c, "%s\tif %s==0 goto %s\n%s\tgoto %s\n%s:\n%s%s:\n", &E_c, &E_p, &labelelse, &COM_c, &labelfim, &labelelse, &RIF_c, &labelfim);
  goto <D.6081>;
  <D.6080>:
  sprintf (COMIF_c, "%s\tif %s==0 goto %s\n%s%s:\n", &E_c, &E_p, &labelfim, &COM_c, &labelfim);
  <D.6081>:
  D.6082 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6084>;
  <D.6077>:
  D.6082 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6084>;
  <D.6075>:
  D.6082 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6084>;
  <D.6073>:
  coluna.208_8 = coluna;
  linha.209_9 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.209_9, coluna.208_8);
  D.6082 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6084>;
  <D.6071>:
  D.6082 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6084>;
  <D.6069>:
  coluna.210_10 = coluna;
  linha.211_11 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.211_11, coluna.210_10);
  D.6082 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6084>;
  <D.6067>:
  D.6082 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6084>;
  <D.6084>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  COM_c = {CLOBBER};
  RIF_c = {CLOBBER};
  labelelse = {CLOBBER};
  labelfim = {CLOBBER};
  goto <D.6083>;
  <D.6083>:
  return D.6082;
}



;; Function RIF (RIF, funcdef_no=45, decl_uid=4795, cgraph_uid=45, symbol_order=62)

RIF (char * RIF_c)
{
  char COM_c[1000];
  int D.6089;

  tk.212_1 = tk;
  if (tk.212_1 == 12) goto <D.6085>; else goto <D.6086>;
  <D.6085>:
  getToken ();
  _2 = COM (&COM_c);
  if (_2 != 0) goto <D.6087>; else goto <D.6088>;
  <D.6087>:
  strcpy (RIF_c, &COM_c);
  D.6089 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6091>;
  <D.6088>:
  D.6089 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6091>;
  <D.6086>:
  D.6089 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6091>;
  <D.6091>:
  COM_c = {CLOBBER};
  goto <D.6090>;
  <D.6090>:
  return D.6089;
}



;; Function COMFOR (COMFOR, funcdef_no=46, decl_uid=4797, cgraph_uid=46, symbol_order=63)

COMFOR (char * COMFOR_c)
{
  char labelfim[1000];
  char labellaco[1000];
  char EIF3_p[1000];
  char EIF2_p[1000];
  char EIF1_p[1000];
  char EIF3_c[1000];
  char EIF2_c[1000];
  char EIF1_c[1000];
  char RFOR_c[1000];
  char COM_c[1000];
  int D.6112;

  tk.213_1 = tk;
  if (tk.213_1 == 15) goto <D.6092>; else goto <D.6093>;
  <D.6092>:
  laco = 1;
  getToken ();
  tk.214_2 = tk;
  if (tk.214_2 == 34) goto <D.6094>; else goto <D.6095>;
  <D.6094>:
  getToken ();
  _3 = EIF (&EIF1_c, &EIF1_p);
  if (_3 != 0) goto <D.6096>; else goto <D.6097>;
  <D.6096>:
  tk.215_4 = tk;
  if (tk.215_4 == 40) goto <D.6098>; else goto <D.6099>;
  <D.6098>:
  getToken ();
  _5 = EIF (&EIF2_c, &EIF2_p);
  if (_5 != 0) goto <D.6100>; else goto <D.6101>;
  <D.6100>:
  tk.216_6 = tk;
  if (tk.216_6 == 40) goto <D.6102>; else goto <D.6103>;
  <D.6102>:
  getToken ();
  _7 = EIF (&EIF3_c, &EIF3_p);
  if (_7 != 0) goto <D.6104>; else goto <D.6105>;
  <D.6104>:
  tk.217_8 = tk;
  if (tk.217_8 == 35) goto <D.6106>; else goto <D.6107>;
  <D.6106>:
  getToken ();
  _9 = COM (&COM_c);
  if (_9 != 0) goto <D.6108>; else goto <D.6109>;
  <D.6108>:
  laco = 0;
  _10 = RFOR (&RFOR_c);
  if (_10 != 0) goto <D.6110>; else goto <D.6111>;
  <D.6110>:
  geralabel (&labellaco);
  geralabel (&labelfim);
  sprintf (COMFOR_c, "%s%s:\n%s\tif %s == 0 goto %s\n%s%s\tgoto %s\n%s:\n%s", &EIF1_c, &labellaco, &EIF2_c, &EIF2_p, &labelfim, &COM_c, &EIF3_c, &labellaco, &labelfim, &RFOR_c);
  D.6112 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6111>:
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6109>:
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6107>:
  coluna.218_11 = coluna;
  linha.219_12 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.219_12, coluna.218_11);
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6105>:
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6103>:
  coluna.220_13 = coluna;
  linha.221_14 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.221_14, coluna.220_13);
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6101>:
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6099>:
  coluna.222_15 = coluna;
  linha.223_16 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.223_16, coluna.222_15);
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6097>:
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6095>:
  coluna.224_17 = coluna;
  linha.225_18 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.225_18, coluna.224_17);
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6093>:
  D.6112 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6114>;
  <D.6114>:
  COM_c = {CLOBBER};
  RFOR_c = {CLOBBER};
  EIF1_c = {CLOBBER};
  EIF2_c = {CLOBBER};
  EIF3_c = {CLOBBER};
  EIF1_p = {CLOBBER};
  EIF2_p = {CLOBBER};
  EIF3_p = {CLOBBER};
  labellaco = {CLOBBER};
  labelfim = {CLOBBER};
  goto <D.6113>;
  <D.6113>:
  return D.6112;
}



;; Function RFOR (RFOR, funcdef_no=47, decl_uid=4799, cgraph_uid=47, symbol_order=64)

RFOR (char * RFOR_c)
{
  char COM_c[1000];
  int D.6117;

  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.6115>; else goto <D.6116>;
  <D.6115>:
  strcpy (RFOR_c, &COM_c);
  D.6117 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6119>;
  <D.6116>:
  D.6117 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6119>;
  <D.6119>:
  COM_c = {CLOBBER};
  goto <D.6118>;
  <D.6118>:
  return D.6117;
}



;; Function EIF (EIF, funcdef_no=48, decl_uid=4802, cgraph_uid=48, symbol_order=65)

EIF (char * EIF_c, char * EIF_p)
{
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.6122;

  _1 = E (&E_tp, &E_p, &E_c);
  if (_1 != 0) goto <D.6120>; else goto <D.6121>;
  <D.6120>:
  strcpy (EIF_c, &E_c);
  strcpy (EIF_p, &E_p);
  D.6122 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6124>;
  <D.6121>:
  D.6122 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6124>;
  <D.6124>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  goto <D.6123>;
  <D.6123>:
  return D.6122;
}



;; Function COMWHILE (COMWHILE, funcdef_no=49, decl_uid=4804, cgraph_uid=49, symbol_order=66)

COMWHILE (char * COMWHILE_c)
{
  char labelfim[10];
  char labelinicio[10];
  char RWHILE_c[1000];
  char COM_c[1000];
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.6138;

  tk.226_1 = tk;
  if (tk.226_1 == 13) goto <D.6126>; else goto <D.6125>;
  <D.6126>:
  doWhile.227_2 = doWhile;
  if (doWhile.227_2 != 1) goto <D.6127>; else goto <D.6125>;
  <D.6127>:
  laco = 1;
  getToken ();
  tk.228_3 = tk;
  if (tk.228_3 == 34) goto <D.6128>; else goto <D.6129>;
  <D.6128>:
  getToken ();
  _4 = E (&E_tp, &E_p, &E_c);
  if (_4 != 0) goto <D.6130>; else goto <D.6131>;
  <D.6130>:
  tk.229_5 = tk;
  if (tk.229_5 == 35) goto <D.6132>; else goto <D.6133>;
  <D.6132>:
  getToken ();
  _6 = COM (&COM_c);
  if (_6 != 0) goto <D.6134>; else goto <D.6135>;
  <D.6134>:
  _7 = RWHILE (&RWHILE_c);
  if (_7 != 0) goto <D.6136>; else goto <D.6137>;
  <D.6136>:
  geralabel (&labelinicio);
  geralabel (&labelfim);
  sprintf (COMWHILE_c, "%s:\n%s\tif %s==0 goto %s\n%s\tgoto %s\n%s:\n%s", &labelinicio, &E_c, &E_p, &labelfim, &COM_c, &labelinicio, &labelfim, &RWHILE_c);
  laco = 0;
  D.6138 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6140>;
  <D.6137>:
  D.6138 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6140>;
  <D.6135>:
  D.6138 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6140>;
  <D.6133>:
  coluna.230_8 = coluna;
  linha.231_9 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.231_9, coluna.230_8);
  D.6138 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6140>;
  <D.6131>:
  D.6138 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6140>;
  <D.6129>:
  coluna.232_10 = coluna;
  linha.233_11 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.233_11, coluna.232_10);
  D.6138 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6140>;
  <D.6125>:
  D.6138 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6140>;
  <D.6140>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  COM_c = {CLOBBER};
  RWHILE_c = {CLOBBER};
  labelinicio = {CLOBBER};
  labelfim = {CLOBBER};
  goto <D.6139>;
  <D.6139>:
  return D.6138;
}



;; Function RWHILE (RWHILE, funcdef_no=50, decl_uid=4806, cgraph_uid=50, symbol_order=67)

RWHILE (char * RWHILE_c)
{
  char COM_c[1000];
  int D.6143;

  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.6141>; else goto <D.6142>;
  <D.6141>:
  strcpy (RWHILE_c, &COM_c);
  D.6143 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6145>;
  <D.6142>:
  D.6143 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6145>;
  <D.6145>:
  COM_c = {CLOBBER};
  goto <D.6144>;
  <D.6144>:
  return D.6143;
}



;; Function COMDOWHILE (COMDOWHILE, funcdef_no=51, decl_uid=4808, cgraph_uid=51, symbol_order=68)

COMDOWHILE (char * COMDOWHILE_c)
{
  char label[10];
  char RDOWHILE_c[1000];
  char COM_c[1000];
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.6162;

  tk.234_1 = tk;
  if (tk.234_1 == 14) goto <D.6146>; else goto <D.6147>;
  <D.6146>:
  laco = 1;
  doWhile = 1;
  getToken ();
  _2 = COM (&COM_c);
  if (_2 != 0) goto <D.6148>; else goto <D.6149>;
  <D.6148>:
  _3 = RDOWHILE (&RDOWHILE_c);
  if (_3 != 0) goto <D.6150>; else goto <D.6151>;
  <D.6150>:
  tk.235_4 = tk;
  if (tk.235_4 == 13) goto <D.6152>; else goto <D.6153>;
  <D.6152>:
  getToken ();
  tk.236_5 = tk;
  if (tk.236_5 == 34) goto <D.6154>; else goto <D.6155>;
  <D.6154>:
  getToken ();
  _6 = E (&E_tp, &E_p, &E_c);
  if (_6 != 0) goto <D.6156>; else goto <D.6157>;
  <D.6156>:
  tk.237_7 = tk;
  if (tk.237_7 == 35) goto <D.6158>; else goto <D.6159>;
  <D.6158>:
  getToken ();
  tk.238_8 = tk;
  if (tk.238_8 == 40) goto <D.6160>; else goto <D.6161>;
  <D.6160>:
  getToken ();
  doWhile = 0;
  geralabel (&label);
  sprintf (COMDOWHILE_c, "%s:\n%s%s\tif %s==1 goto %s\n%s", &label, &COM_c, &E_c, &E_p, &label, &RDOWHILE_c);
  laco = 0;
  D.6162 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6161>:
  coluna.239_9 = coluna;
  linha.240_10 = linha;
  printf ("Erro: esperava token \';\' na linha %d coluna %d\n", linha.240_10, coluna.239_9);
  goto <D.6163>;
  <D.6159>:
  coluna.241_11 = coluna;
  linha.242_12 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.242_12, coluna.241_11);
  D.6162 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6163>:
  goto <D.6164>;
  <D.6157>:
  D.6162 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6164>:
  goto <D.6165>;
  <D.6155>:
  coluna.243_13 = coluna;
  linha.244_14 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.244_14, coluna.243_13);
  D.6162 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6165>:
  goto <D.6166>;
  <D.6153>:
  coluna.245_15 = coluna;
  linha.246_16 = linha;
  printf ("Erro: esperava token \'while\' na linha %d coluna %d\n", linha.246_16, coluna.245_15);
  D.6162 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6166>:
  goto <D.6167>;
  <D.6151>:
  D.6162 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6167>:
  goto <D.6168>;
  <D.6149>:
  D.6162 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6168>:
  goto <D.6169>;
  <D.6147>:
  D.6162 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6171>;
  <D.6169>:
  D.6162 = -1;
  goto <D.6171>;
  <D.6171>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  COM_c = {CLOBBER};
  RDOWHILE_c = {CLOBBER};
  label = {CLOBBER};
  goto <D.6170>;
  <D.6170>:
  return D.6162;
}



;; Function RDOWHILE (RDOWHILE, funcdef_no=52, decl_uid=4810, cgraph_uid=52, symbol_order=69)

RDOWHILE (char * RDOWHILE_c)
{
  char COM_c[1000];
  int D.6174;

  _1 = COM (&COM_c);
  if (_1 != 0) goto <D.6172>; else goto <D.6173>;
  <D.6172>:
  strcpy (RDOWHILE_c, &COM_c);
  D.6174 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6176>;
  <D.6173>:
  D.6174 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6176>;
  <D.6176>:
  COM_c = {CLOBBER};
  goto <D.6175>;
  <D.6175>:
  return D.6174;
}



;; Function COMSWITCH (COMSWITCH, funcdef_no=53, decl_uid=4811, cgraph_uid=53, symbol_order=70)

COMSWITCH ()
{
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.6187;

  tk.247_1 = tk;
  if (tk.247_1 == 16) goto <D.6177>; else goto <D.6178>;
  <D.6177>:
  getToken ();
  tk.248_2 = tk;
  if (tk.248_2 == 34) goto <D.6179>; else goto <D.6180>;
  <D.6179>:
  getToken ();
  _3 = E (&E_tp, &E_p, &E_c);
  if (_3 != 0) goto <D.6181>; else goto <D.6182>;
  <D.6181>:
  tk.249_4 = tk;
  if (tk.249_4 == 35) goto <D.6183>; else goto <D.6184>;
  <D.6183>:
  getToken ();
  _5 = RSWITCH ();
  if (_5 != 0) goto <D.6185>; else goto <D.6186>;
  <D.6185>:
  D.6187 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6189>;
  <D.6186>:
  D.6187 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6189>;
  <D.6184>:
  coluna.250_6 = coluna;
  linha.251_7 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.251_7, coluna.250_6);
  D.6187 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6189>;
  <D.6182>:
  D.6187 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6189>;
  <D.6180>:
  coluna.252_8 = coluna;
  linha.253_9 = linha;
  printf ("Erro: esperava token \'(\' na linha %d coluna %d\n", linha.253_9, coluna.252_8);
  D.6187 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6189>;
  <D.6178>:
  D.6187 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6189>;
  <D.6189>:
  E_tp = {CLOBBER};
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  goto <D.6188>;
  <D.6188>:
  return D.6187;
}



;; Function RSWITCH (RSWITCH, funcdef_no=54, decl_uid=4812, cgraph_uid=54, symbol_order=71)

RSWITCH ()
{
  char COM_c[1000];
  int D.6204;

  tk.254_1 = tk;
  if (tk.254_1 == 36) goto <D.6190>; else goto <D.6191>;
  <D.6190>:
  getToken ();
  tk.255_2 = tk;
  if (tk.255_2 == 17) goto <D.6192>; else goto <D.6193>;
  <D.6192>:
  getToken ();
  tk.256_3 = tk;
  if (tk.256_3 == 80) goto <D.6194>; else goto <D.6195>;
  <D.6194>:
  getToken ();
  tk.257_4 = tk;
  if (tk.257_4 == 41) goto <D.6196>; else goto <D.6197>;
  <D.6196>:
  getToken ();
  _5 = COM (&COM_c);
  if (_5 != 0) goto <D.6198>; else goto <D.6199>;
  <D.6198>:
  _6 = NEXTCASE ();
  if (_6 != 0) goto <D.6200>; else goto <D.6201>;
  <D.6200>:
  tk.258_7 = tk;
  if (tk.258_7 == 37) goto <D.6202>; else goto <D.6203>;
  <D.6202>:
  getToken ();
  D.6204 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6203>:
  coluna.259_8 = coluna;
  linha.260_9 = linha;
  printf ("Erro: esperava token \'}\' na linha %d coluna %d\n", linha.260_9, coluna.259_8);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6201>:
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6199>:
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6197>:
  coluna.261_10 = coluna;
  linha.262_11 = linha;
  printf ("Erro: esperava token \':\' na linha %d coluna %d\n", linha.262_11, coluna.261_10);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6195>:
  coluna.263_12 = coluna;
  linha.264_13 = linha;
  printf ("Erro: esperava constante inteira na linha %d coluna %d\n", linha.264_13, coluna.263_12);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6193>:
  coluna.265_14 = coluna;
  linha.266_15 = linha;
  printf ("Erro: esperava token \'case\' na linha %d coluna %d\n", linha.266_15, coluna.265_14);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6191>:
  tk.267_16 = tk;
  if (tk.267_16 == 17) goto <D.6205>; else goto <D.6206>;
  <D.6205>:
  getToken ();
  tk.268_17 = tk;
  if (tk.268_17 == 80) goto <D.6207>; else goto <D.6208>;
  <D.6207>:
  getToken ();
  tk.269_18 = tk;
  if (tk.269_18 == 41) goto <D.6209>; else goto <D.6210>;
  <D.6209>:
  getToken ();
  _19 = COM (&COM_c);
  if (_19 != 0) goto <D.6211>; else goto <D.6212>;
  <D.6211>:
  D.6204 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6212>:
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6210>:
  coluna.270_20 = coluna;
  linha.271_21 = linha;
  printf ("Erro: esperava token \':\' na linha %d coluna %d\n", linha.271_21, coluna.270_20);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6208>:
  coluna.272_22 = coluna;
  linha.273_23 = linha;
  printf ("Erro: esperava constante inteira na linha %d coluna %d\n", linha.273_23, coluna.272_22);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6206>:
  tk.274_24 = tk;
  if (tk.274_24 == 19) goto <D.6213>; else goto <D.6214>;
  <D.6213>:
  getToken ();
  tk.275_25 = tk;
  if (tk.275_25 == 41) goto <D.6215>; else goto <D.6216>;
  <D.6215>:
  getToken ();
  _26 = COM (&COM_c);
  if (_26 != 0) goto <D.6217>; else goto <D.6218>;
  <D.6217>:
  D.6204 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6218>:
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6216>:
  coluna.276_27 = coluna;
  linha.277_28 = linha;
  printf ("Erro: esperava token \':\' na linha %d coluna %d\n", linha.277_28, coluna.276_27);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6214>:
  coluna.278_29 = coluna;
  linha.279_30 = linha;
  printf ("Erro: esperava token \'{\', \'case\' ou \'default\' na linha %d coluna %d\n", linha.279_30, coluna.278_29);
  D.6204 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6220>;
  <D.6220>:
  COM_c = {CLOBBER};
  goto <D.6219>;
  <D.6219>:
  return D.6204;
}



;; Function NEXTCASE (NEXTCASE, funcdef_no=55, decl_uid=4813, cgraph_uid=55, symbol_order=72)

NEXTCASE ()
{
  char COM_c[1000];
  int D.6231;

  tk.280_1 = tk;
  if (tk.280_1 == 17) goto <D.6221>; else goto <D.6222>;
  <D.6221>:
  getToken ();
  tk.281_2 = tk;
  if (tk.281_2 == 80) goto <D.6223>; else goto <D.6224>;
  <D.6223>:
  getToken ();
  tk.282_3 = tk;
  if (tk.282_3 == 41) goto <D.6225>; else goto <D.6226>;
  <D.6225>:
  getToken ();
  _4 = COM (&COM_c);
  if (_4 != 0) goto <D.6227>; else goto <D.6228>;
  <D.6227>:
  _5 = NEXTCASE ();
  if (_5 != 0) goto <D.6229>; else goto <D.6230>;
  <D.6229>:
  D.6231 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6230>:
  D.6231 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6228>:
  D.6231 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6226>:
  coluna.283_6 = coluna;
  linha.284_7 = linha;
  printf ("Erro: esperava token \':\' na linha %d coluna %d\n", linha.284_7, coluna.283_6);
  D.6231 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6224>:
  coluna.285_8 = coluna;
  linha.286_9 = linha;
  printf ("Erro: esperava constante inteira na linha %d coluna %d\n", linha.286_9, coluna.285_8);
  D.6231 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6222>:
  tk.287_10 = tk;
  if (tk.287_10 == 19) goto <D.6232>; else goto <D.6233>;
  <D.6232>:
  getToken ();
  tk.288_11 = tk;
  if (tk.288_11 == 41) goto <D.6234>; else goto <D.6235>;
  <D.6234>:
  getToken ();
  _12 = COM (&COM_c);
  if (_12 != 0) goto <D.6236>; else goto <D.6237>;
  <D.6236>:
  D.6231 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6237>:
  D.6231 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6235>:
  coluna.289_13 = coluna;
  linha.290_14 = linha;
  printf ("Erro: esperava token \':\' na linha %d coluna %d\n", linha.290_14, coluna.289_13);
  D.6231 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6233>:
  D.6231 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6239>;
  <D.6239>:
  COM_c = {CLOBBER};
  goto <D.6238>;
  <D.6238>:
  return D.6231;
}



;; Function E (E, funcdef_no=56, decl_uid=4817, cgraph_uid=56, symbol_order=73)

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
  int D.6244;

  _1 = E1 (&E1_tp, &E1_h, &E1_s, &E1_p, &E1_c);
  if (_1 != 0) goto <D.6240>; else goto <D.6241>;
  <D.6240>:
  strcpy (&ELinha_h, &E1_tp);
  strcpy (&ELinha_hp, &E1_p);
  strcpy (&ELinha_hc, &E1_c);
  _2 = ELinha (&ELinha_h, &ELinha_s, &ELinha_p, &ELinha_hp, &ELinha_sp, &ELinha_c, &ELinha_hc, &ELinha_sc);
  if (_2 != 0) goto <D.6242>; else goto <D.6243>;
  <D.6242>:
  strcpy (E_tp, &ELinha_s);
  strcpy (E_p, &ELinha_sp);
  strcpy (E_c, &ELinha_sc);
  D.6244 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6246>;
  <D.6243>:
  D.6244 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6246>;
  <D.6241>:
  D.6244 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6246>;
  <D.6246>:
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
  goto <D.6245>;
  <D.6245>:
  return D.6244;
}



;; Function ELinha (ELinha, funcdef_no=57, decl_uid=4826, cgraph_uid=57, symbol_order=74)

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
  int D.6253;

  tk.291_1 = tk;
  if (tk.291_1 == 42) goto <D.6247>; else goto <D.6248>;
  <D.6247>:
  getToken ();
  _2 = E1 (&E1_tp, &E1_h, &E1_s, &E1_p, &E1_c);
  if (_2 != 0) goto <D.6249>; else goto <D.6250>;
  <D.6249>:
  strcpy (&ELinha2_h, &E1_tp);
  _3 = ELinha (&ELinha2_h, &ELinha2_s, &ELinha2_p, &ELinha2_hp, &ELinha2_sp, &ELinha2_c, &ELinha2_hc, &ELinha2_sc);
  if (_3 != 0) goto <D.6251>; else goto <D.6252>;
  <D.6251>:
  strcpy (ELinha_s, &ELinha2_s);
  strcpy (ELinha_p, &ELinha2_p);
  sprintf (ELinha_c, "%s %s", &E1_c, &ELinha2_c);
  D.6253 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6255>;
  <D.6252>:
  D.6253 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6255>;
  <D.6250>:
  D.6253 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6255>;
  <D.6248>:
  strcpy (ELinha_s, ELinha_h);
  strcpy (ELinha_sp, ELinha_hp);
  strcpy (ELinha_sc, ELinha_hc);
  D.6253 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6255>;
  <D.6255>:
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
  goto <D.6254>;
  <D.6254>:
  return D.6253;
}



;; Function E1 (E1, funcdef_no=58, decl_uid=4832, cgraph_uid=58, symbol_order=75)

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
  int D.6262;

  _1 = E2 (&E2_tp, &E2_h, &E2_s, &E2_p, &E2_c);
  if (_1 != 0) goto <D.6256>; else goto <D.6257>;
  <D.6256>:
  tk.292_2 = tk;
  if (tk.292_2 == 43) goto <D.6258>; else goto <D.6259>;
  <D.6258>:
  strcpy (&E1Linha_h, &E2_tp);
  getToken ();
  _3 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_3 != 0) goto <D.6260>; else goto <D.6261>;
  <D.6260>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s\n", &E1Linha_c, &E2_p, &E1Linha_p);
  D.6262 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6261>:
  D.6262 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6259>:
  tk.293_4 = tk;
  if (tk.293_4 == 54) goto <D.6263>; else goto <D.6264>;
  <D.6263>:
  strcpy (&E1Linha_h, &E2_tp);
  getToken ();
  _5 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_5 != 0) goto <D.6265>; else goto <D.6266>;
  <D.6265>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s * %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6262 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6266>:
  D.6262 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6264>:
  tk.294_6 = tk;
  if (tk.294_6 == 55) goto <D.6267>; else goto <D.6268>;
  <D.6267>:
  strcpy (&E1Linha_h, &E2_tp);
  getToken ();
  _7 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_7 != 0) goto <D.6269>; else goto <D.6270>;
  <D.6269>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s / %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6262 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6270>:
  D.6262 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6268>:
  tk.295_8 = tk;
  if (tk.295_8 == 56) goto <D.6271>; else goto <D.6272>;
  <D.6271>:
  strcpy (&E1Linha_h, &E2_tp);
  getToken ();
  _9 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_9 != 0) goto <D.6273>; else goto <D.6274>;
  <D.6273>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s %c %s\n", &E1Linha_c, &E2_p, &E2_p, 37, &E1Linha_p);
  D.6262 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6274>:
  D.6262 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6272>:
  tk.296_10 = tk;
  if (tk.296_10 == 53) goto <D.6275>; else goto <D.6276>;
  <D.6275>:
  strcpy (&E1Linha_h, &E2_tp);
  getToken ();
  _11 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_11 != 0) goto <D.6277>; else goto <D.6278>;
  <D.6277>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s + %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6262 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6278>:
  D.6262 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6276>:
  tk.297_12 = tk;
  if (tk.297_12 == 52) goto <D.6279>; else goto <D.6280>;
  <D.6279>:
  strcpy (&E1Linha_h, &E2_tp);
  getToken ();
  _13 = E1 (&E1Linha_tp, &E1Linha_h, &E1Linha_s, &E1Linha_p, &E1Linha_c);
  if (_13 != 0) goto <D.6281>; else goto <D.6282>;
  <D.6281>:
  strcpy (E1_tp, &E1Linha_s);
  strcpy (E1_p, &E2_p);
  sprintf (E1_c, "%s\t%s = %s - %s\n", &E1Linha_c, &E2_p, &E2_p, &E1Linha_p);
  D.6262 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6282>:
  D.6262 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6280>:
  strcpy (E1_tp, &E2_tp);
  strcpy (E1_p, &E2_p);
  strcpy (E1_c, &E2_c);
  D.6262 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6285>;
  <D.6257>:
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
  goto <D.6284>;
  <D.6285>:
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
  goto <D.6283>;
  <D.6284>:
  return;
  <D.6283>:
  return D.6262;
}



;; Function E2 (E2, funcdef_no=59, decl_uid=4838, cgraph_uid=59, symbol_order=76)

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
  int D.6290;

  _1 = E3 (&E3_tp, &E3_p, &E3_c);
  if (_1 != 0) goto <D.6286>; else goto <D.6287>;
  <D.6286>:
  strcpy (&E2Linha_h, &E3_tp);
  strcpy (&E2Linha_hp, &E3_p);
  strcpy (&E2Linha_hc, &E3_c);
  _2 = E2Linha (&E2Linha_h, &E2Linha_s, &E2Linha_hp, &E2Linha_sp, &E2Linha_hc, &E2Linha_sc);
  if (_2 != 0) goto <D.6288>; else goto <D.6289>;
  <D.6288>:
  strcpy (E2_tp, &E2Linha_s);
  strcpy (E2_p, &E2Linha_sp);
  strcpy (E2_c, &E2Linha_sc);
  D.6290 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6292>;
  <D.6289>:
  D.6290 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6292>;
  <D.6287>:
  D.6290 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6292>;
  <D.6292>:
  E2Linha_h = {CLOBBER};
  E2Linha_s = {CLOBBER};
  E2Linha_hp = {CLOBBER};
  E2Linha_sp = {CLOBBER};
  E2Linha_hc = {CLOBBER};
  E2Linha_sc = {CLOBBER};
  E3_tp = {CLOBBER};
  E3_p = {CLOBBER};
  E3_c = {CLOBBER};
  goto <D.6291>;
  <D.6291>:
  return D.6290;
}



;; Function E2Linha (E2Linha, funcdef_no=60, decl_uid=4845, cgraph_uid=60, symbol_order=77)

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
  int D.6303;

  tk.298_1 = tk;
  if (tk.298_1 == 64) goto <D.6293>; else goto <D.6294>;
  <D.6293>:
  getToken ();
  _2 = E2 (&E2_tp, &E2_h, &E2_s, &E2_p, &E2_c);
  if (_2 != 0) goto <D.6295>; else goto <D.6296>;
  <D.6295>:
  tk.299_3 = tk;
  if (tk.299_3 == 41) goto <D.6297>; else goto <D.6298>;
  <D.6297>:
  getToken ();
  _4 = E2 (&E2_tp, &E2_h, &E2_s, &E2_p, &E2_c);
  if (_4 != 0) goto <D.6299>; else goto <D.6300>;
  <D.6299>:
  _5 = E2Linha (&E2Linha2_h, &E2Linha2_s, &E2Linha2_hp, &E2Linha2_sp, &E2Linha2_hc, &E2Linha2_sc);
  if (_5 != 0) goto <D.6301>; else goto <D.6302>;
  <D.6301>:
  D.6303 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6305>;
  <D.6302>:
  D.6303 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6305>;
  <D.6300>:
  D.6303 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6305>;
  <D.6298>:
  coluna.300_6 = coluna;
  linha.301_7 = linha;
  printf ("Erro: esperava token \':\' na linha %d coluna %d\n", linha.301_7, coluna.300_6);
  D.6303 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6305>;
  <D.6296>:
  D.6303 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6305>;
  <D.6294>:
  strcpy (E2Linha_s, E2Linha_h);
  strcpy (E2Linha_sp, E2Linha_hp);
  strcpy (E2Linha_sc, E2Linha_hc);
  D.6303 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6305>;
  <D.6305>:
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
  goto <D.6304>;
  <D.6304>:
  return D.6303;
}



;; Function E3 (E3, funcdef_no=61, decl_uid=4849, cgraph_uid=61, symbol_order=78)

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
  int D.6310;

  _1 = E4 (&E4_tp, &E4_p, &E4_c);
  if (_1 != 0) goto <D.6306>; else goto <D.6307>;
  <D.6306>:
  strcpy (&E3Linha_h, &E4_tp);
  strcpy (&E3Linha_hp, &E4_p);
  strcpy (&E3Linha_hc, &E4_c);
  _2 = E3Linha (&E3Linha_h, &E3Linha_s, &E3Linha_hp, &E3Linha_sp, &E3Linha_hc, &E3Linha_sc);
  if (_2 != 0) goto <D.6308>; else goto <D.6309>;
  <D.6308>:
  strcpy (E3_tp, &E3Linha_s);
  strcpy (E3_p, &E3Linha_sp);
  strcpy (E3_c, &E3Linha_sc);
  D.6310 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6312>;
  <D.6309>:
  D.6310 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6312>;
  <D.6307>:
  D.6310 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6312>;
  <D.6312>:
  E3Linha_h = {CLOBBER};
  E3Linha_s = {CLOBBER};
  E3Linha_hp = {CLOBBER};
  E3Linha_sp = {CLOBBER};
  E3Linha_hc = {CLOBBER};
  E3Linha_sc = {CLOBBER};
  E4_tp = {CLOBBER};
  E4_p = {CLOBBER};
  E4_c = {CLOBBER};
  goto <D.6311>;
  <D.6311>:
  return D.6310;
}



;; Function E3Linha (E3Linha, funcdef_no=62, decl_uid=4856, cgraph_uid=62, symbol_order=79)

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
  int D.6319;

  tk.302_1 = tk;
  if (tk.302_1 == 67) goto <D.6313>; else goto <D.6314>;
  <D.6313>:
  getToken ();
  _2 = E4 (&E4_tp, &E4_p, &E4_c);
  if (_2 != 0) goto <D.6315>; else goto <D.6316>;
  <D.6315>:
  __builtin_memcpy (&E3Linha2_h, "int", 4);
  geratemp (&E3Linha2_hp);
  sprintf (&E3Linha2_hc, "%s%s\t%s = %s || %s\n", E3Linha_hc, &E4_c, &E3Linha2_hp, E3Linha_hp, &E4_p);
  _3 = E3Linha (&E3Linha2_h, &E3Linha2_s, &E3Linha2_hp, &E3Linha2_sp, &E3Linha2_hc, &E3Linha2_sc);
  if (_3 != 0) goto <D.6317>; else goto <D.6318>;
  <D.6317>:
  strcpy (E3Linha_s, &E3Linha2_s);
  strcpy (E3Linha_sp, &E3Linha2_sp);
  strcpy (E3Linha_sc, &E3Linha2_sc);
  D.6319 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6324>;
  <D.6318>:
  goto <D.6320>;
  <D.6316>:
  D.6319 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6324>;
  <D.6320>:
  goto <D.6321>;
  <D.6314>:
  strcpy (E3Linha_s, E3Linha_h);
  strcpy (E3Linha_sp, E3Linha_hp);
  strcpy (E3Linha_sc, E3Linha_hc);
  D.6319 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6324>;
  <D.6321>:
  E3Linha2_h = {CLOBBER};
  E3Linha2_s = {CLOBBER};
  E3Linha2_hp = {CLOBBER};
  E3Linha2_sp = {CLOBBER};
  E3Linha2_hc = {CLOBBER};
  E3Linha2_sc = {CLOBBER};
  E4_tp = {CLOBBER};
  E4_p = {CLOBBER};
  E4_c = {CLOBBER};
  goto <D.6323>;
  <D.6324>:
  E3Linha2_h = {CLOBBER};
  E3Linha2_s = {CLOBBER};
  E3Linha2_hp = {CLOBBER};
  E3Linha2_sp = {CLOBBER};
  E3Linha2_hc = {CLOBBER};
  E3Linha2_sc = {CLOBBER};
  E4_tp = {CLOBBER};
  E4_p = {CLOBBER};
  E4_c = {CLOBBER};
  goto <D.6322>;
  <D.6323>:
  return;
  <D.6322>:
  return D.6319;
}



;; Function E4 (E4, funcdef_no=63, decl_uid=4860, cgraph_uid=63, symbol_order=80)

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
  int D.6329;

  _1 = E5 (&E5_tp, &E5_p, &E5_c);
  if (_1 != 0) goto <D.6325>; else goto <D.6326>;
  <D.6325>:
  strcpy (&E4Linha_h, &E5_tp);
  strcpy (&E4Linha_hp, &E5_p);
  strcpy (&E4Linha_hc, &E5_c);
  _2 = E4Linha (&E4Linha_h, &E4Linha_s, &E4Linha_hp, &E4Linha_sp, &E4Linha_hc, &E4Linha_sc);
  if (_2 != 0) goto <D.6327>; else goto <D.6328>;
  <D.6327>:
  strcpy (E4_tp, &E4Linha_s);
  strcpy (E4_p, &E4Linha_sp);
  strcpy (E4_c, &E4Linha_sc);
  D.6329 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6331>;
  <D.6328>:
  D.6329 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6331>;
  <D.6326>:
  D.6329 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6331>;
  <D.6331>:
  E4Linha_h = {CLOBBER};
  E4Linha_s = {CLOBBER};
  E4Linha_hp = {CLOBBER};
  E4Linha_sp = {CLOBBER};
  E4Linha_hc = {CLOBBER};
  E4Linha_sc = {CLOBBER};
  E5_tp = {CLOBBER};
  E5_p = {CLOBBER};
  E5_c = {CLOBBER};
  goto <D.6330>;
  <D.6330>:
  return D.6329;
}



;; Function E4Linha (E4Linha, funcdef_no=64, decl_uid=4867, cgraph_uid=64, symbol_order=81)

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
  int D.6338;

  tk.303_1 = tk;
  if (tk.303_1 == 68) goto <D.6332>; else goto <D.6333>;
  <D.6332>:
  getToken ();
  _2 = E5 (&E5_tp, &E5_p, &E5_c);
  if (_2 != 0) goto <D.6334>; else goto <D.6335>;
  <D.6334>:
  __builtin_memcpy (&E4Linha2_h, "int", 4);
  geratemp (&E4Linha2_hp);
  sprintf (&E4Linha2_hc, "%s%s\t%s = %s && %s\n", E4Linha_hc, &E5_c, &E4Linha2_hp, E4Linha_hp, &E5_p);
  _3 = E4Linha (&E4Linha2_h, &E4Linha2_s, &E4Linha2_hp, &E4Linha2_sp, &E4Linha2_hc, &E4Linha2_sc);
  if (_3 != 0) goto <D.6336>; else goto <D.6337>;
  <D.6336>:
  strcpy (E4Linha_s, &E4Linha2_s);
  strcpy (E4Linha_sp, &E4Linha2_sp);
  strcpy (E4Linha_sc, &E4Linha2_sc);
  D.6338 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6340>;
  <D.6337>:
  D.6338 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6340>;
  <D.6335>:
  D.6338 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6340>;
  <D.6333>:
  strcpy (E4Linha_s, E4Linha_h);
  strcpy (E4Linha_sp, E4Linha_hp);
  strcpy (E4Linha_sc, E4Linha_hc);
  D.6338 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6340>;
  <D.6340>:
  E4Linha2_h = {CLOBBER};
  E4Linha2_s = {CLOBBER};
  E4Linha2_hp = {CLOBBER};
  E4Linha2_sp = {CLOBBER};
  E4Linha2_hc = {CLOBBER};
  E4Linha2_sc = {CLOBBER};
  E5_tp = {CLOBBER};
  E5_p = {CLOBBER};
  E5_c = {CLOBBER};
  goto <D.6339>;
  <D.6339>:
  return D.6338;
}



;; Function E5 (E5, funcdef_no=65, decl_uid=4871, cgraph_uid=65, symbol_order=82)

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
  int D.6345;

  _1 = E6 (&E6_tp, &E6_p, &E6_c);
  if (_1 != 0) goto <D.6341>; else goto <D.6342>;
  <D.6341>:
  strcpy (&E5Linha_h, &E6_tp);
  strcpy (&E5Linha_hp, &E6_p);
  strcpy (&E5Linha_hc, &E6_c);
  _2 = E5Linha (&E5Linha_h, &E5Linha_s, &E5Linha_hp, &E5Linha_sp, &E5Linha_hc, &E5Linha_sc);
  if (_2 != 0) goto <D.6343>; else goto <D.6344>;
  <D.6343>:
  strcpy (E5_tp, &E5Linha_s);
  strcpy (E5_p, &E5Linha_sp);
  strcpy (E5_c, &E5Linha_sc);
  D.6345 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6347>;
  <D.6344>:
  D.6345 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6347>;
  <D.6342>:
  D.6345 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6347>;
  <D.6347>:
  E6_tp = {CLOBBER};
  E6_p = {CLOBBER};
  E6_c = {CLOBBER};
  E5Linha_h = {CLOBBER};
  E5Linha_s = {CLOBBER};
  E5Linha_hp = {CLOBBER};
  E5Linha_sp = {CLOBBER};
  E5Linha_hc = {CLOBBER};
  E5Linha_sc = {CLOBBER};
  goto <D.6346>;
  <D.6346>:
  return D.6345;
}



;; Function E5Linha (E5Linha, funcdef_no=66, decl_uid=4878, cgraph_uid=66, symbol_order=83)

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
  int D.6354;

  tk.304_1 = tk;
  if (tk.304_1 == 71) goto <D.6348>; else goto <D.6349>;
  <D.6348>:
  getToken ();
  _2 = E6 (&E6_tp, &E6_p, &E6_c);
  if (_2 != 0) goto <D.6350>; else goto <D.6351>;
  <D.6350>:
  __builtin_memcpy (&E5Linha2_h, "int", 4);
  geratemp (&E5Linha2_hp);
  sprintf (&E5Linha2_hc, "%s%s\t%s = %s | %s\n", E5Linha_hc, &E6_c, &E5Linha2_hp, E5Linha_hp, &E6_p);
  _3 = E5Linha (&E5Linha2_h, &E5Linha2_s, &E5Linha2_hp, &E5Linha2_sp, &E5Linha2_hc, &E5Linha2_sc);
  if (_3 != 0) goto <D.6352>; else goto <D.6353>;
  <D.6352>:
  strcpy (E5Linha_s, &E5Linha2_s);
  strcpy (E5Linha_sp, &E5Linha2_sp);
  strcpy (E5Linha_sc, &E5Linha2_sc);
  D.6354 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6353>:
  D.6354 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6351>:
  D.6354 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6349>:
  strcpy (E5Linha_s, E5Linha_h);
  strcpy (E5Linha_sp, E5Linha_hp);
  strcpy (E5Linha_sc, E5Linha_hc);
  D.6354 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6356>;
  <D.6356>:
  E6_tp = {CLOBBER};
  E6_p = {CLOBBER};
  E6_c = {CLOBBER};
  E5Linha2_h = {CLOBBER};
  E5Linha2_s = {CLOBBER};
  E5Linha2_hp = {CLOBBER};
  E5Linha2_sp = {CLOBBER};
  E5Linha2_hc = {CLOBBER};
  E5Linha2_sc = {CLOBBER};
  goto <D.6355>;
  <D.6355>:
  return D.6354;
}



;; Function E6 (E6, funcdef_no=67, decl_uid=4882, cgraph_uid=67, symbol_order=84)

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
  int D.6361;

  _1 = E7 (&E7_tp, &E7_p, &E7_c);
  if (_1 != 0) goto <D.6357>; else goto <D.6358>;
  <D.6357>:
  strcpy (&E6Linha_h, &E7_tp);
  strcpy (&E6Linha_hp, &E7_p);
  strcpy (&E6Linha_hc, &E7_c);
  _2 = E6Linha (&E6Linha_h, &E6Linha_s, &E6Linha_hp, &E6Linha_sp, &E6Linha_hc, &E6Linha_sc);
  if (_2 != 0) goto <D.6359>; else goto <D.6360>;
  <D.6359>:
  strcpy (E6_tp, &E6Linha_s);
  strcpy (E6_p, &E6Linha_sp);
  strcpy (E6_c, &E6Linha_sc);
  D.6361 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6363>;
  <D.6360>:
  D.6361 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6363>;
  <D.6358>:
  D.6361 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6363>;
  <D.6363>:
  E7_tp = {CLOBBER};
  E7_p = {CLOBBER};
  E7_c = {CLOBBER};
  E6Linha_h = {CLOBBER};
  E6Linha_s = {CLOBBER};
  E6Linha_hp = {CLOBBER};
  E6Linha_sp = {CLOBBER};
  E6Linha_hc = {CLOBBER};
  E6Linha_sc = {CLOBBER};
  goto <D.6362>;
  <D.6362>:
  return D.6361;
}



;; Function E6Linha (E6Linha, funcdef_no=68, decl_uid=4889, cgraph_uid=68, symbol_order=85)

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
  int D.6370;

  tk.305_1 = tk;
  if (tk.305_1 == 72) goto <D.6364>; else goto <D.6365>;
  <D.6364>:
  getToken ();
  _2 = E7 (&E7_tp, &E7_p, &E7_c);
  if (_2 != 0) goto <D.6366>; else goto <D.6367>;
  <D.6366>:
  __builtin_memcpy (&E6Linha2_h, "int", 4);
  geratemp (&E6Linha2_hp);
  sprintf (&E6Linha2_hc, "%s%s\t%s = %s ^ %s\n", E6Linha_hc, &E7_c, &E6Linha2_hp, E6Linha_hp, &E7_p);
  _3 = E6Linha (&E6Linha2_h, &E6Linha2_s, &E6Linha2_hp, &E6Linha2_sp, &E6Linha2_hc, &E6Linha2_sc);
  if (_3 != 0) goto <D.6368>; else goto <D.6369>;
  <D.6368>:
  strcpy (E6Linha_s, &E6Linha2_s);
  strcpy (E6Linha_sp, &E6Linha2_sp);
  strcpy (E6Linha_sc, &E6Linha2_sc);
  D.6370 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6372>;
  <D.6369>:
  D.6370 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6372>;
  <D.6367>:
  D.6370 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6372>;
  <D.6365>:
  strcpy (E6Linha_s, E6Linha_h);
  strcpy (E6Linha_sp, E6Linha_hp);
  strcpy (E6Linha_sc, E6Linha_hc);
  D.6370 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6372>;
  <D.6372>:
  E7_tp = {CLOBBER};
  E7_p = {CLOBBER};
  E7_c = {CLOBBER};
  E6Linha2_h = {CLOBBER};
  E6Linha2_s = {CLOBBER};
  E6Linha2_hp = {CLOBBER};
  E6Linha2_sp = {CLOBBER};
  E6Linha2_hc = {CLOBBER};
  E6Linha2_sc = {CLOBBER};
  goto <D.6371>;
  <D.6371>:
  return D.6370;
}



;; Function E7 (E7, funcdef_no=69, decl_uid=4893, cgraph_uid=69, symbol_order=86)

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
  int D.6377;

  _1 = E8 (&E8_tp, &E8_p, &E8_c);
  if (_1 != 0) goto <D.6373>; else goto <D.6374>;
  <D.6373>:
  strcpy (&E7Linha_h, &E8_tp);
  strcpy (&E7Linha_hp, &E8_p);
  strcpy (&E7Linha_hc, &E8_c);
  _2 = E7Linha (&E7Linha_h, &E7Linha_s, &E7Linha_hp, &E7Linha_sp, &E7Linha_hc, &E7Linha_sc);
  if (_2 != 0) goto <D.6375>; else goto <D.6376>;
  <D.6375>:
  strcpy (E7_tp, &E7Linha_s);
  strcpy (E7_p, &E7Linha_sp);
  strcpy (E7_c, &E7Linha_sc);
  D.6377 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6379>;
  <D.6376>:
  D.6377 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6379>;
  <D.6374>:
  D.6377 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6379>;
  <D.6379>:
  E8_tp = {CLOBBER};
  E8_p = {CLOBBER};
  E8_c = {CLOBBER};
  E7Linha_h = {CLOBBER};
  E7Linha_s = {CLOBBER};
  E7Linha_hp = {CLOBBER};
  E7Linha_sp = {CLOBBER};
  E7Linha_hc = {CLOBBER};
  E7Linha_sc = {CLOBBER};
  goto <D.6378>;
  <D.6378>:
  return D.6377;
}



;; Function E7Linha (E7Linha, funcdef_no=70, decl_uid=4900, cgraph_uid=70, symbol_order=87)

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
  int D.6386;

  tk.306_1 = tk;
  if (tk.306_1 == 70) goto <D.6380>; else goto <D.6381>;
  <D.6380>:
  getToken ();
  _2 = E8 (&E8_tp, &E8_p, &E8_c);
  if (_2 != 0) goto <D.6382>; else goto <D.6383>;
  <D.6382>:
  __builtin_memcpy (&E7Linha2_h, "int", 4);
  geratemp (&E7Linha2_hp);
  sprintf (&E7Linha2_hc, "%s%s\t%s = %s & %s\n", E7Linha_hc, &E8_c, &E7Linha2_hp, E7Linha_hp, &E8_p);
  _3 = E7Linha (&E7Linha2_h, &E7Linha2_s, &E7Linha2_hp, &E7Linha2_sp, &E7Linha2_hc, &E7Linha2_sc);
  if (_3 != 0) goto <D.6384>; else goto <D.6385>;
  <D.6384>:
  strcpy (E7Linha_s, &E7Linha2_s);
  strcpy (E7Linha_sp, &E7Linha2_sp);
  strcpy (E7Linha_sc, &E7Linha2_sc);
  D.6386 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6388>;
  <D.6385>:
  D.6386 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6388>;
  <D.6383>:
  D.6386 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6388>;
  <D.6381>:
  strcpy (E7Linha_s, E7Linha_h);
  strcpy (E7Linha_sp, E7Linha_hp);
  strcpy (E7Linha_sc, E7Linha_hc);
  D.6386 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6388>;
  <D.6388>:
  E8_tp = {CLOBBER};
  E8_p = {CLOBBER};
  E8_c = {CLOBBER};
  E7Linha2_h = {CLOBBER};
  E7Linha2_s = {CLOBBER};
  E7Linha2_hp = {CLOBBER};
  E7Linha2_sp = {CLOBBER};
  E7Linha2_hc = {CLOBBER};
  E7Linha2_sc = {CLOBBER};
  goto <D.6387>;
  <D.6387>:
  return D.6386;
}



;; Function E8 (E8, funcdef_no=71, decl_uid=4904, cgraph_uid=71, symbol_order=88)

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
  int D.6393;

  _1 = E9 (&E9_tp, &E9_p, &E9_c);
  if (_1 != 0) goto <D.6389>; else goto <D.6390>;
  <D.6389>:
  strcpy (&E8Linha_h, &E9_tp);
  strcpy (&E8Linha_hp, &E9_p);
  strcpy (&E8Linha_hc, &E9_c);
  _2 = E8Linha (&E8Linha_h, &E8Linha_s, &E8Linha_hp, &E8Linha_sp, &E8Linha_hc, &E8Linha_sc);
  if (_2 != 0) goto <D.6391>; else goto <D.6392>;
  <D.6391>:
  strcpy (E8_tp, &E8Linha_s);
  strcpy (E8_p, &E8Linha_sp);
  strcpy (E8_c, &E8Linha_sc);
  D.6393 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6395>;
  <D.6392>:
  D.6393 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6395>;
  <D.6390>:
  D.6393 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6395>;
  <D.6395>:
  E9_tp = {CLOBBER};
  E9_p = {CLOBBER};
  E9_c = {CLOBBER};
  E8Linha_h = {CLOBBER};
  E8Linha_s = {CLOBBER};
  E8Linha_hp = {CLOBBER};
  E8Linha_sp = {CLOBBER};
  E8Linha_hc = {CLOBBER};
  E8Linha_sc = {CLOBBER};
  goto <D.6394>;
  <D.6394>:
  return D.6393;
}



;; Function E8Linha (E8Linha, funcdef_no=72, decl_uid=4911, cgraph_uid=72, symbol_order=89)

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
  int D.6402;

  tk.307_1 = tk;
  if (tk.307_1 == 61) goto <D.6396>; else goto <D.6397>;
  <D.6396>:
  getToken ();
  _2 = E9 (&E9_tp, &E9_p, &E9_c);
  if (_2 != 0) goto <D.6398>; else goto <D.6399>;
  <D.6398>:
  __builtin_memcpy (&E8Linha2_h, "int", 4);
  geratemp (&E8Linha2_hp);
  sprintf (&E8Linha2_hc, "%s%s\t%s = %s == %s\n", E8Linha_hc, &E9_c, &E8Linha2_hp, E8Linha_hp, &E9_p);
  _3 = E8Linha (&E8Linha2_h, &E8Linha2_s, &E8Linha2_hp, &E8Linha2_sp, &E8Linha2_hc, &E8Linha2_sc);
  if (_3 != 0) goto <D.6400>; else goto <D.6401>;
  <D.6400>:
  strcpy (E8Linha_s, &E8Linha2_s);
  strcpy (E8Linha_sp, &E8Linha2_sp);
  strcpy (E8Linha_sc, &E8Linha2_sc);
  D.6402 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6410>;
  <D.6401>:
  D.6402 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6410>;
  <D.6399>:
  D.6402 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6410>;
  <D.6397>:
  tk.308_4 = tk;
  if (tk.308_4 == 62) goto <D.6403>; else goto <D.6404>;
  <D.6403>:
  getToken ();
  _5 = E9 (&E9_tp, &E9_p, &E9_c);
  if (_5 != 0) goto <D.6405>; else goto <D.6406>;
  <D.6405>:
  __builtin_memcpy (&E8Linha2_h, "int", 4);
  geratemp (&E8Linha2_hp);
  sprintf (&E8Linha2_hc, "%s%s\t%s = %s != %s\n", E8Linha_hc, &E9_c, &E8Linha2_hp, E8Linha_hp, &E9_p);
  _6 = E8Linha (&E8Linha2_h, &E8Linha2_s, &E8Linha2_hp, &E8Linha2_sp, &E8Linha2_hc, &E8Linha2_sc);
  if (_6 != 0) goto <D.6407>; else goto <D.6408>;
  <D.6407>:
  strcpy (E8Linha_s, &E8Linha2_s);
  strcpy (E8Linha_sp, &E8Linha2_sp);
  strcpy (E8Linha_sc, &E8Linha2_sc);
  D.6402 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6410>;
  <D.6408>:
  D.6402 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6410>;
  <D.6406>:
  D.6402 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6410>;
  <D.6404>:
  strcpy (E8Linha_s, E8Linha_h);
  strcpy (E8Linha_sp, E8Linha_hp);
  strcpy (E8Linha_sc, E8Linha_hc);
  D.6402 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6410>;
  <D.6410>:
  E9_tp = {CLOBBER};
  E9_p = {CLOBBER};
  E9_c = {CLOBBER};
  E8Linha2_h = {CLOBBER};
  E8Linha2_s = {CLOBBER};
  E8Linha2_hp = {CLOBBER};
  E8Linha2_sp = {CLOBBER};
  E8Linha2_hc = {CLOBBER};
  E8Linha2_sc = {CLOBBER};
  goto <D.6409>;
  <D.6409>:
  return D.6402;
}



;; Function E9 (E9, funcdef_no=73, decl_uid=4915, cgraph_uid=73, symbol_order=90)

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
  int D.6415;

  _1 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_1 != 0) goto <D.6411>; else goto <D.6412>;
  <D.6411>:
  strcpy (&E9Linha_h, &E10_tp);
  strcpy (&E9Linha_hp, &E10_p);
  strcpy (&E9Linha_hc, &E10_c);
  _2 = E9Linha (&E9Linha_h, &E9Linha_s, &E9Linha_hp, &E9Linha_sp, &E9Linha_hc, &E9Linha_sc);
  if (_2 != 0) goto <D.6413>; else goto <D.6414>;
  <D.6413>:
  strcpy (E9_tp, &E9Linha_s);
  strcpy (E9_p, &E9Linha_sp);
  strcpy (E9_c, &E9Linha_sc);
  D.6415 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6417>;
  <D.6414>:
  D.6415 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6417>;
  <D.6412>:
  D.6415 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6417>;
  <D.6417>:
  E10_tp = {CLOBBER};
  E10_p = {CLOBBER};
  E10_c = {CLOBBER};
  E9Linha_h = {CLOBBER};
  E9Linha_s = {CLOBBER};
  E9Linha_hp = {CLOBBER};
  E9Linha_sp = {CLOBBER};
  E9Linha_hc = {CLOBBER};
  E9Linha_sc = {CLOBBER};
  goto <D.6416>;
  <D.6416>:
  return D.6415;
}



;; Function E9Linha (E9Linha, funcdef_no=74, decl_uid=4922, cgraph_uid=74, symbol_order=91)

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
  int D.6424;

  tk.309_1 = tk;
  if (tk.309_1 == 50) goto <D.6418>; else goto <D.6419>;
  <D.6418>:
  getToken ();
  _2 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_2 != 0) goto <D.6420>; else goto <D.6421>;
  <D.6420>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  geratemp (&E9Linha2_hp);
  sprintf (&E9Linha2_hc, "%s%s\t%s = %s < %s\n", E9Linha_hc, &E10_c, &E9Linha2_hp, E9Linha_hp, &E10_p);
  _3 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_3 != 0) goto <D.6422>; else goto <D.6423>;
  <D.6422>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6424 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6423>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6421>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6419>:
  tk.310_4 = tk;
  if (tk.310_4 == 49) goto <D.6425>; else goto <D.6426>;
  <D.6425>:
  getToken ();
  _5 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_5 != 0) goto <D.6427>; else goto <D.6428>;
  <D.6427>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  geratemp (&E9Linha2_hp);
  sprintf (&E9Linha2_hc, "%s%s\t%s = %s > %s\n", E9Linha_hc, &E10_c, &E9Linha2_hp, E9Linha_hp, &E10_p);
  _6 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_6 != 0) goto <D.6429>; else goto <D.6430>;
  <D.6429>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6424 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6430>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6428>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6426>:
  tk.311_7 = tk;
  if (tk.311_7 == 58) goto <D.6431>; else goto <D.6432>;
  <D.6431>:
  getToken ();
  _8 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_8 != 0) goto <D.6433>; else goto <D.6434>;
  <D.6433>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  geratemp (&E9Linha2_hp);
  sprintf (&E9Linha2_hc, "%s%s\t%s = %s <= %s\n", E9Linha_hc, &E10_c, &E9Linha2_hp, E9Linha_hp, &E10_p);
  _9 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_9 != 0) goto <D.6435>; else goto <D.6436>;
  <D.6435>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6424 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6436>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6434>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6432>:
  tk.312_10 = tk;
  if (tk.312_10 == 57) goto <D.6437>; else goto <D.6438>;
  <D.6437>:
  getToken ();
  _11 = E10 (&E10_tp, &E10_p, &E10_c);
  if (_11 != 0) goto <D.6439>; else goto <D.6440>;
  <D.6439>:
  __builtin_memcpy (&E9Linha2_h, "int", 4);
  geratemp (&E9Linha2_hp);
  sprintf (&E9Linha2_hc, "%s%s\t%s = %s >= %s\n", E9Linha_hc, &E10_c, &E9Linha2_hp, E9Linha_hp, &E10_p);
  _12 = E9Linha (&E9Linha2_h, &E9Linha2_s, &E9Linha2_hp, &E9Linha2_sp, &E9Linha2_hc, &E9Linha2_sc);
  if (_12 != 0) goto <D.6441>; else goto <D.6442>;
  <D.6441>:
  strcpy (E9Linha_s, &E9Linha2_s);
  strcpy (E9Linha_sp, &E9Linha2_sp);
  strcpy (E9Linha_sc, &E9Linha2_sc);
  D.6424 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6442>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6440>:
  D.6424 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6438>:
  strcpy (E9Linha_s, E9Linha_h);
  strcpy (E9Linha_sp, E9Linha_hp);
  strcpy (E9Linha_sc, E9Linha_hc);
  D.6424 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6444>;
  <D.6444>:
  E10_tp = {CLOBBER};
  E10_p = {CLOBBER};
  E10_c = {CLOBBER};
  E9Linha2_h = {CLOBBER};
  E9Linha2_s = {CLOBBER};
  E9Linha2_hp = {CLOBBER};
  E9Linha2_sp = {CLOBBER};
  E9Linha2_hc = {CLOBBER};
  E9Linha2_sc = {CLOBBER};
  goto <D.6443>;
  <D.6443>:
  return D.6424;
}



;; Function E10 (E10, funcdef_no=75, decl_uid=4926, cgraph_uid=75, symbol_order=92)

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
  int D.6449;

  _1 = E11 (&E11_tp, &E11_p, &E11_c);
  if (_1 != 0) goto <D.6445>; else goto <D.6446>;
  <D.6445>:
  strcpy (&E10Linha_h, &E11_tp);
  strcpy (&E10Linha_hp, &E11_p);
  strcpy (&E10Linha_hc, &E11_c);
  _2 = E10Linha (&E10Linha_h, &E10Linha_s, &E10Linha_hp, &E10Linha_sp, &E10Linha_hc, &E10Linha_sc);
  if (_2 != 0) goto <D.6447>; else goto <D.6448>;
  <D.6447>:
  strcpy (E10_tp, &E10Linha_s);
  strcpy (E10_p, &E10Linha_sp);
  strcpy (E10_c, &E10Linha_sc);
  D.6449 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6451>;
  <D.6448>:
  D.6449 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6451>;
  <D.6446>:
  D.6449 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6451>;
  <D.6451>:
  E11_tp = {CLOBBER};
  E11_p = {CLOBBER};
  E11_c = {CLOBBER};
  E10Linha_h = {CLOBBER};
  E10Linha_s = {CLOBBER};
  E10Linha_hp = {CLOBBER};
  E10Linha_sp = {CLOBBER};
  E10Linha_hc = {CLOBBER};
  E10Linha_sc = {CLOBBER};
  goto <D.6450>;
  <D.6450>:
  return D.6449;
}



;; Function E10Linha (E10Linha, funcdef_no=76, decl_uid=4933, cgraph_uid=76, symbol_order=93)

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
  int D.6458;

  tk.313_1 = tk;
  if (tk.313_1 == 65) goto <D.6452>; else goto <D.6453>;
  <D.6452>:
  getToken ();
  _2 = E11 (&E11_tp, &E11_p, &E11_c);
  if (_2 != 0) goto <D.6454>; else goto <D.6455>;
  <D.6454>:
  __builtin_memcpy (&E10Linha2_h, "int", 4);
  geratemp (&E10Linha2_hp);
  sprintf (&E10Linha2_hc, "%s%s\t%s = %s << %s\n", E10Linha_hc, &E11_c, &E10Linha2_hp, E10Linha_hp, &E11_p);
  _3 = E10Linha (&E10Linha2_h, &E10Linha2_s, &E10Linha2_hp, &E10Linha2_sp, &E10Linha2_hc, &E10Linha2_sc);
  if (_3 != 0) goto <D.6456>; else goto <D.6457>;
  <D.6456>:
  strcpy (E10Linha_s, &E10Linha2_s);
  strcpy (E10Linha_sp, &E10Linha2_sp);
  strcpy (E10Linha_sc, &E10Linha2_sc);
  D.6458 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6466>;
  <D.6457>:
  D.6458 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6466>;
  <D.6455>:
  D.6458 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6466>;
  <D.6453>:
  tk.314_4 = tk;
  if (tk.314_4 == 66) goto <D.6459>; else goto <D.6460>;
  <D.6459>:
  getToken ();
  _5 = E11 (&E11_tp, &E11_p, &E11_c);
  if (_5 != 0) goto <D.6461>; else goto <D.6462>;
  <D.6461>:
  __builtin_memcpy (&E10Linha2_h, "int", 4);
  geratemp (&E10Linha2_hp);
  sprintf (&E10Linha2_hc, "%s%s\t%s = %s >> %s\n", E10Linha_hc, &E11_c, &E10Linha2_hp, E10Linha_hp, &E11_p);
  _6 = E10Linha (&E10Linha2_h, &E10Linha2_s, &E10Linha2_hp, &E10Linha2_sp, &E10Linha2_hc, &E10Linha2_sc);
  if (_6 != 0) goto <D.6463>; else goto <D.6464>;
  <D.6463>:
  strcpy (E10Linha_s, &E10Linha2_s);
  strcpy (E10Linha_sp, &E10Linha2_sp);
  strcpy (E10Linha_sc, &E10Linha2_sc);
  D.6458 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6466>;
  <D.6464>:
  D.6458 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6466>;
  <D.6462>:
  D.6458 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6466>;
  <D.6460>:
  strcpy (E10Linha_s, E10Linha_h);
  strcpy (E10Linha_sp, E10Linha_hp);
  strcpy (E10Linha_sc, E10Linha_hc);
  D.6458 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6466>;
  <D.6466>:
  E11_tp = {CLOBBER};
  E11_p = {CLOBBER};
  E11_c = {CLOBBER};
  E10Linha2_h = {CLOBBER};
  E10Linha2_s = {CLOBBER};
  E10Linha2_hp = {CLOBBER};
  E10Linha2_sp = {CLOBBER};
  E10Linha2_hc = {CLOBBER};
  E10Linha2_sc = {CLOBBER};
  goto <D.6465>;
  <D.6465>:
  return D.6458;
}



;; Function E11 (E11, funcdef_no=77, decl_uid=4937, cgraph_uid=77, symbol_order=94)

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
  int D.6471;

  _1 = E12 (&E12_tp, &E12_p, &E12_c);
  if (_1 != 0) goto <D.6467>; else goto <D.6468>;
  <D.6467>:
  strcpy (&E11Linha_h, &E12_tp);
  strcpy (&E11Linha_hp, &E12_p);
  strcpy (&E11Linha_hc, &E12_c);
  _2 = E11Linha (&E11Linha_h, &E11Linha_s, &E11Linha_hp, &E11Linha_sp, &E11Linha_hc, &E11Linha_sc);
  if (_2 != 0) goto <D.6469>; else goto <D.6470>;
  <D.6469>:
  strcpy (E11_tp, &E11Linha_s);
  strcpy (E11_p, &E11Linha_sp);
  strcpy (E11_c, &E11Linha_sc);
  D.6471 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6473>;
  <D.6470>:
  D.6471 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6473>;
  <D.6468>:
  D.6471 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6473>;
  <D.6473>:
  E12_tp = {CLOBBER};
  E12_p = {CLOBBER};
  E12_c = {CLOBBER};
  E11Linha_h = {CLOBBER};
  E11Linha_s = {CLOBBER};
  E11Linha_hp = {CLOBBER};
  E11Linha_sp = {CLOBBER};
  E11Linha_hc = {CLOBBER};
  E11Linha_sc = {CLOBBER};
  goto <D.6472>;
  <D.6472>:
  return D.6471;
}



;; Function E11Linha (E11Linha, funcdef_no=78, decl_uid=4944, cgraph_uid=78, symbol_order=95)

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
  int D.6484;

  tk.315_1 = tk;
  if (tk.315_1 == 44) goto <D.6474>; else goto <D.6475>;
  <D.6474>:
  getToken ();
  _2 = E12 (&E12_tp, &E12_p, &E12_c);
  if (_2 != 0) goto <D.6476>; else goto <D.6477>;
  <D.6476>:
  _3 = strcmp (E11Linha_h, "int");
  if (_3 == 0) goto <D.6480>; else goto <D.6478>;
  <D.6480>:
  _4 = strcmp (&E12_tp, "int");
  if (_4 == 0) goto <D.6481>; else goto <D.6478>;
  <D.6481>:
  __builtin_memcpy (&E11Linha2_h, "int", 4);
  goto <D.6479>;
  <D.6478>:
  __builtin_memcpy (&E11Linha2_h, "float", 6);
  <D.6479>:
  geratemp (&E11Linha2_hp);
  sprintf (&E11Linha2_hc, "%s%s\t%s = %s + %s\n", E11Linha_hc, &E12_c, &E11Linha2_hp, E11Linha_hp, &E12_p);
  _5 = E11Linha (&E11Linha2_h, &E11Linha2_s, &E11Linha2_hp, &E11Linha2_sp, &E11Linha2_hc, &E11Linha2_sc);
  if (_5 != 0) goto <D.6482>; else goto <D.6483>;
  <D.6482>:
  strcpy (E11Linha_s, &E11Linha2_s);
  strcpy (E11Linha_sp, &E11Linha2_sp);
  strcpy (E11Linha_sc, &E11Linha2_sc);
  D.6484 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6499>;
  <D.6483>:
  D.6484 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6499>;
  <D.6477>:
  goto <D.6485>;
  <D.6475>:
  tk.316_6 = tk;
  if (tk.316_6 == 45) goto <D.6486>; else goto <D.6487>;
  <D.6486>:
  getToken ();
  _7 = E12 (&E12_tp, &E12_p, &E12_c);
  if (_7 != 0) goto <D.6488>; else goto <D.6489>;
  <D.6488>:
  _8 = strcmp (E11Linha_h, "int");
  if (_8 == 0) goto <D.6492>; else goto <D.6490>;
  <D.6492>:
  _9 = strcmp (&E12_tp, "int");
  if (_9 == 0) goto <D.6493>; else goto <D.6490>;
  <D.6493>:
  __builtin_memcpy (&E11Linha2_h, "int", 4);
  goto <D.6491>;
  <D.6490>:
  __builtin_memcpy (&E11Linha2_h, "float", 6);
  <D.6491>:
  geratemp (&E11Linha2_hp);
  sprintf (&E11Linha2_hc, "%s%s\t%s = %s - %s\n", E11Linha_hc, &E12_c, &E11Linha2_hp, E11Linha_hp, &E12_p);
  _10 = E11Linha (&E11Linha2_h, &E11Linha2_s, &E11Linha2_hp, &E11Linha2_sp, &E11Linha2_hc, &E11Linha2_sc);
  if (_10 != 0) goto <D.6494>; else goto <D.6495>;
  <D.6494>:
  strcpy (E11Linha_s, &E11Linha2_s);
  strcpy (E11Linha_sp, &E11Linha2_sp);
  strcpy (E11Linha_sc, &E11Linha2_sc);
  D.6484 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6499>;
  <D.6495>:
  D.6484 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6499>;
  <D.6489>:
  goto <D.6496>;
  <D.6487>:
  strcpy (E11Linha_s, E11Linha_h);
  strcpy (E11Linha_sp, E11Linha_hp);
  strcpy (E11Linha_sc, E11Linha_hc);
  D.6484 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6499>;
  <D.6496>:
  <D.6485>:
  E12_tp = {CLOBBER};
  E12_p = {CLOBBER};
  E12_c = {CLOBBER};
  E11Linha2_h = {CLOBBER};
  E11Linha2_s = {CLOBBER};
  E11Linha2_hp = {CLOBBER};
  E11Linha2_sp = {CLOBBER};
  E11Linha2_hc = {CLOBBER};
  E11Linha2_sc = {CLOBBER};
  goto <D.6498>;
  <D.6499>:
  E12_tp = {CLOBBER};
  E12_p = {CLOBBER};
  E12_c = {CLOBBER};
  E11Linha2_h = {CLOBBER};
  E11Linha2_s = {CLOBBER};
  E11Linha2_hp = {CLOBBER};
  E11Linha2_sp = {CLOBBER};
  E11Linha2_hc = {CLOBBER};
  E11Linha2_sc = {CLOBBER};
  goto <D.6497>;
  <D.6498>:
  return;
  <D.6497>:
  return D.6484;
}



;; Function E12 (E12, funcdef_no=79, decl_uid=4948, cgraph_uid=79, symbol_order=96)

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
  int D.6504;

  _1 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_1 != 0) goto <D.6500>; else goto <D.6501>;
  <D.6500>:
  strcpy (&E12Linha_h, &E13_tp);
  strcpy (&E12Linha_hp, &E13_p);
  strcpy (&E12Linha_hc, &E13_c);
  _2 = E12Linha (&E12Linha_h, &E12Linha_s, &E12Linha_hp, &E12Linha_sp, &E12Linha_hc, &E12Linha_sc);
  if (_2 != 0) goto <D.6502>; else goto <D.6503>;
  <D.6502>:
  strcpy (E12_tp, &E12Linha_s);
  strcpy (E12_p, &E12Linha_sp);
  strcpy (E12_c, &E12Linha_sc);
  D.6504 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6506>;
  <D.6503>:
  D.6504 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6506>;
  <D.6501>:
  D.6504 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6506>;
  <D.6506>:
  E13_tp = {CLOBBER};
  E13_p = {CLOBBER};
  E13_c = {CLOBBER};
  E12Linha_h = {CLOBBER};
  E12Linha_s = {CLOBBER};
  E12Linha_hp = {CLOBBER};
  E12Linha_sp = {CLOBBER};
  E12Linha_hc = {CLOBBER};
  E12Linha_sc = {CLOBBER};
  goto <D.6505>;
  <D.6505>:
  return D.6504;
}



;; Function E12Linha (E12Linha, funcdef_no=80, decl_uid=4955, cgraph_uid=80, symbol_order=97)

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
  int D.6517;

  tk.317_1 = tk;
  if (tk.317_1 == 46) goto <D.6507>; else goto <D.6508>;
  <D.6507>:
  getToken ();
  _2 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_2 != 0) goto <D.6509>; else goto <D.6510>;
  <D.6509>:
  _3 = strcmp (E12Linha_h, "int");
  if (_3 == 0) goto <D.6513>; else goto <D.6511>;
  <D.6513>:
  _4 = strcmp (&E13_tp, "int");
  if (_4 != 0) goto <D.6514>; else goto <D.6511>;
  <D.6514>:
  __builtin_memcpy (&E12Linha2_h, "int", 4);
  goto <D.6512>;
  <D.6511>:
  __builtin_memcpy (&E12Linha2_h, "float", 6);
  <D.6512>:
  geratemp (&E12Linha2_hp);
  sprintf (&E12Linha2_hc, "%s%s\t%s = %s * %s\n", E12Linha_hc, &E13_c, &E12Linha2_hp, E12Linha_hp, &E13_p);
  _5 = E12Linha (&E12Linha2_h, &E12Linha2_s, &E12Linha2_hp, &E12Linha2_sp, &E12Linha2_hc, &E12Linha2_sc);
  if (_5 != 0) goto <D.6515>; else goto <D.6516>;
  <D.6515>:
  strcpy (E12Linha_s, &E12Linha2_s);
  strcpy (E12Linha_sp, &E12Linha2_sp);
  strcpy (E12Linha_sc, &E12Linha2_sc);
  D.6517 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6516>:
  D.6517 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6510>:
  D.6517 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6508>:
  tk.318_6 = tk;
  if (tk.318_6 == 47) goto <D.6518>; else goto <D.6519>;
  <D.6518>:
  getToken ();
  _7 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_7 != 0) goto <D.6520>; else goto <D.6521>;
  <D.6520>:
  _8 = strcmp (E12Linha_h, "int");
  if (_8 == 0) goto <D.6524>; else goto <D.6522>;
  <D.6524>:
  _9 = strcmp (&E13_tp, "int");
  if (_9 != 0) goto <D.6525>; else goto <D.6522>;
  <D.6525>:
  __builtin_memcpy (&E12Linha2_h, "int", 4);
  goto <D.6523>;
  <D.6522>:
  __builtin_memcpy (&E12Linha2_h, "float", 6);
  <D.6523>:
  geratemp (&E12Linha2_hp);
  sprintf (&E12Linha2_hc, "%s%s\t%s = %s / %s\n", E12Linha_hc, &E13_c, &E12Linha2_hp, E12Linha_hp, &E13_p);
  _10 = E12Linha (&E12Linha2_h, &E12Linha2_s, &E12Linha2_hp, &E12Linha2_sp, &E12Linha2_hc, &E12Linha2_sc);
  if (_10 != 0) goto <D.6526>; else goto <D.6527>;
  <D.6526>:
  strcpy (E12Linha_s, &E12Linha2_s);
  strcpy (E12Linha_sp, &E12Linha2_sp);
  strcpy (E12Linha_sc, &E12Linha2_sc);
  D.6517 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6527>:
  D.6517 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6521>:
  D.6517 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6519>:
  tk.319_11 = tk;
  if (tk.319_11 == 48) goto <D.6528>; else goto <D.6529>;
  <D.6528>:
  getToken ();
  _12 = E13 (&E13_tp, &E13_p, &E13_c);
  if (_12 != 0) goto <D.6530>; else goto <D.6531>;
  <D.6530>:
  _13 = strcmp (E12Linha_h, "int");
  if (_13 == 0) goto <D.6534>; else goto <D.6532>;
  <D.6534>:
  _14 = strcmp (&E13_tp, "int");
  if (_14 == 0) goto <D.6535>; else goto <D.6532>;
  <D.6535>:
  __builtin_memcpy (&E12Linha2_h, "int", 4);
  goto <D.6533>;
  <D.6532>:
  printf ("Erro: opera\xc3\xa7\xc3\xa3o de resto inv\xc3\xa1lida");
  exit (0);
  <D.6533>:
  geratemp (&E12Linha2_hp);
  sprintf (&E12Linha2_hc, "%s%s\t%s = %s %c %s\n", E12Linha_hc, &E13_c, &E12Linha2_hp, E12Linha_hp, 37, &E13_p);
  _15 = E12Linha (&E12Linha2_h, &E12Linha2_s, &E12Linha2_hp, &E12Linha2_sp, &E12Linha2_hc, &E12Linha2_sc);
  if (_15 != 0) goto <D.6536>; else goto <D.6537>;
  <D.6536>:
  strcpy (E12Linha_s, &E12Linha2_s);
  strcpy (E12Linha_sp, &E12Linha2_sp);
  strcpy (E12Linha_sc, &E12Linha2_sc);
  D.6517 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6537>:
  D.6517 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6531>:
  D.6517 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6529>:
  strcpy (E12Linha_s, E12Linha_h);
  strcpy (E12Linha_sp, E12Linha_hp);
  strcpy (E12Linha_sc, E12Linha_hc);
  D.6517 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6539>;
  <D.6539>:
  E13_tp = {CLOBBER};
  E13_p = {CLOBBER};
  E13_c = {CLOBBER};
  E12Linha2_h = {CLOBBER};
  E12Linha2_s = {CLOBBER};
  E12Linha2_hp = {CLOBBER};
  E12Linha2_sp = {CLOBBER};
  E12Linha2_hc = {CLOBBER};
  E12Linha2_sc = {CLOBBER};
  goto <D.6538>;
  <D.6538>:
  return D.6517;
}



;; Function E13 (E13, funcdef_no=81, decl_uid=4959, cgraph_uid=81, symbol_order=98)

E13 (char * E13_tp, char * E13_p, char * E13_c)
{
  char E13Linha_s[10];
  char E13Linha_h[10];
  char E13Linha_tp[10];
  char E14_c[1000];
  char E14_p[10];
  char E14_tp[10];
  int D.6546;

  _1 = E14 (&E14_tp, &E14_p, &E14_c);
  if (_1 != 0) goto <D.6540>; else goto <D.6541>;
  <D.6540>:
  tk.320_2 = tk;
  if (tk.320_2 == 45) goto <D.6542>; else goto <D.6543>;
  <D.6542>:
  strcpy (&E13Linha_h, &E14_tp);
  getToken ();
  _3 = E13 (&E13Linha_tp, &E13Linha_h, &E13Linha_s);
  if (_3 != 0) goto <D.6544>; else goto <D.6545>;
  <D.6544>:
  strcpy (E13_tp, &E13Linha_s);
  D.6546 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6545>:
  D.6546 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6543>:
  tk.321_4 = tk;
  if (tk.321_4 == 60) goto <D.6547>; else goto <D.6548>;
  <D.6547>:
  strcpy (&E13Linha_h, &E14_tp);
  getToken ();
  _5 = E13 (&E13Linha_tp, &E13Linha_h, &E13Linha_s);
  if (_5 != 0) goto <D.6549>; else goto <D.6550>;
  <D.6549>:
  strcpy (E13_tp, &E13Linha_s);
  D.6546 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6550>:
  D.6546 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6548>:
  tk.322_6 = tk;
  if (tk.322_6 == 59) goto <D.6551>; else goto <D.6552>;
  <D.6551>:
  strcpy (&E13Linha_h, &E14_tp);
  getToken ();
  _7 = E13 (&E13Linha_tp, &E13Linha_h, &E13Linha_s);
  if (_7 != 0) goto <D.6553>; else goto <D.6554>;
  <D.6553>:
  strcpy (E13_tp, &E13Linha_s);
  D.6546 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6554>:
  D.6546 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6552>:
  tk.323_8 = tk;
  if (tk.323_8 == 63) goto <D.6555>; else goto <D.6556>;
  <D.6555>:
  strcpy (&E13Linha_h, &E14_tp);
  getToken ();
  _9 = E13 (&E13Linha_tp, &E13Linha_h, &E13Linha_s);
  if (_9 != 0) goto <D.6557>; else goto <D.6558>;
  <D.6557>:
  strcpy (E13_tp, &E13Linha_s);
  D.6546 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6558>:
  D.6546 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6556>:
  strcpy (E13_tp, &E14_tp);
  strcpy (E13_p, &E14_p);
  strcpy (E13_c, &E14_c);
  D.6546 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6560>;
  <D.6541>:
  D.6546 = 0;
  goto <D.6560>;
  <D.6560>:
  E14_tp = {CLOBBER};
  E14_p = {CLOBBER};
  E14_c = {CLOBBER};
  E13Linha_tp = {CLOBBER};
  E13Linha_h = {CLOBBER};
  E13Linha_s = {CLOBBER};
  goto <D.6559>;
  <D.6559>:
  return D.6546;
}



;; Function E14 (E14, funcdef_no=82, decl_uid=4963, cgraph_uid=82, symbol_order=99)

E14 (char * E14_tp, char * E14_p, char * E14_c)
{
  char E_c[1000];
  char E_p[1000];
  char E_tp[10];
  int D.6563;

  tk.324_1 = tk;
  if (tk.324_1 == 80) goto <D.6561>; else goto <D.6562>;
  <D.6561>:
  __builtin_memcpy (E14_tp, "int", 4);
  geratemp (E14_p);
  sprintf (E14_c, "\t%s = %s\n", E14_p, &lex);
  getToken ();
  D.6563 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6582>;
  <D.6562>:
  tk.325_2 = tk;
  if (tk.325_2 == 81) goto <D.6564>; else goto <D.6565>;
  <D.6564>:
  __builtin_memcpy (E14_tp, "float", 6);
  geratemp (E14_p);
  sprintf (E14_c, "\t%s = %s\n", E14_p, &lex);
  getToken ();
  D.6563 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6582>;
  <D.6565>:
  tk.326_3 = tk;
  if (tk.326_3 == 1) goto <D.6566>; else goto <D.6567>;
  <D.6566>:
  ts.327_4 = ts;
  consultaTipo (&lex, E14_tp, ts.327_4);
  _5 = strcmp (E14_tp, "int");
  if (_5 != 0) goto <D.6568>; else goto <D.6569>;
  <D.6568>:
  _6 = strcmp (E14_tp, "float");
  if (_6 != 0) goto <D.6570>; else goto <D.6571>;
  <D.6570>:
  printf ("Variavel %s nao foi declarada\n", &lex);
  exit (0);
  <D.6571>:
  <D.6569>:
  strcpy (E14_p, &lex);
  __builtin_memcpy (E14_c, "", 1);
  getToken ();
  _7 = RE ();
  if (_7 != 0) goto <D.6572>; else goto <D.6573>;
  <D.6572>:
  D.6563 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6582>;
  <D.6573>:
  D.6563 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6582>;
  <D.6567>:
  tk.328_8 = tk;
  if (tk.328_8 == 34) goto <D.6574>; else goto <D.6575>;
  <D.6574>:
  getToken ();
  _9 = E (&E_tp, &E_p, &E_c);
  if (_9 != 0) goto <D.6576>; else goto <D.6577>;
  <D.6576>:
  tk.329_10 = tk;
  if (tk.329_10 == 35) goto <D.6578>; else goto <D.6579>;
  <D.6578>:
  getToken ();
  strcpy (E14_c, &E_c);
  strcpy (E14_p, &E_p);
  D.6563 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6581>;
  <D.6579>:
  D.6563 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6581>;
  <D.6577>:
  D.6563 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6581>;
  <D.6581>:
  E_p = {CLOBBER};
  E_c = {CLOBBER};
  goto <D.6582>;
  <D.6575>:
  D.6563 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6582>;
  <D.6582>:
  E_tp = {CLOBBER};
  goto <D.6580>;
  <D.6580>:
  return D.6563;
}



;; Function RE (RE, funcdef_no=83, decl_uid=4964, cgraph_uid=83, symbol_order=100)

RE ()
{
  int D.6589;

  tk.330_1 = tk;
  if (tk.330_1 == 34) goto <D.6583>; else goto <D.6584>;
  <D.6583>:
  getToken ();
  _2 = LP ();
  if (_2 != 0) goto <D.6585>; else goto <D.6586>;
  <D.6585>:
  tk.331_3 = tk;
  if (tk.331_3 == 35) goto <D.6587>; else goto <D.6588>;
  <D.6587>:
  getToken ();
  D.6589 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6590>;
  <D.6588>:
  coluna.332_4 = coluna;
  linha.333_5 = linha;
  printf ("Erro: esperava token \')\' na linha %d coluna %d\n", linha.333_5, coluna.332_4);
  D.6589 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6590>;
  <D.6586>:
  D.6589 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6590>;
  <D.6584>:
  D.6589 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.6590>;
  <D.6590>:
  return D.6589;
}



;; Function main (main, funcdef_no=84, decl_uid=5626, cgraph_uid=84, symbol_order=101)

main ()
{
  char colunaSt[3];
  char linhaSt[3];
  int i;
  struct FILE * entrada;
  char c;
  char lex[20];
  char conteudo[20000];
  int D.6608;

  _1 = __acrt_iob_func (1);
  setbuf (_1, 0B);
  ts = 0B;
  i = 0;
  entrada = fopen ("teste.txt", "r");
  if (entrada == 0B) goto <D.6591>; else goto <D.6592>;
  <D.6591>:
  __builtin_puts (&"Arquivo n\xc3\xa3o pode ser aberto"[0]);
  exit (1);
  <D.6592>:
  <D.5634>:
  _2 = fgetc (entrada);
  c = (char) _2;
  _3 = feof (entrada);
  if (_3 != 0) goto <D.6593>; else goto <D.6594>;
  <D.6593>:
  goto <D.5633>;
  <D.6594>:
  if (c != 9) goto <D.6597>; else goto <D.6595>;
  <D.6597>:
  if (c != 10) goto <D.6598>; else goto <D.6595>;
  <D.6598>:
  if (c != 13) goto <D.6599>; else goto <D.6595>;
  <D.6599>:
  i.334_4 = i;
  i = i.334_4 + 1;
  conteudo[i.334_4] = c;
  goto <D.6596>;
  <D.6595>:
  if (c == 10) goto <D.6600>; else goto <D.6601>;
  <D.6600>:
  i.335_5 = i;
  i = i.335_5 + 1;
  conteudo[i.335_5] = 127;
  goto <D.6602>;
  <D.6601>:
  if (c == 9) goto <D.6603>; else goto <D.6604>;
  <D.6603>:
  i.336_6 = i;
  i = i.336_6 + 1;
  conteudo[i.336_6] = 9;
  <D.6604>:
  <D.6602>:
  <D.6596>:
  goto <D.5634>;
  <D.5633>:
  conteudo[i] = 0;
  i = 0;
  goto <D.5636>;
  <D.5635>:
  tksParser[i] = -1;
  i = i + 1;
  <D.5636>:
  if (i <= 999) goto <D.5635>; else goto <D.5637>;
  <D.5637>:
  goto <D.5641>;
  <D.5640>:
  posColuna.337_7 = posColuna;
  subColuna.338_8 = subColuna;
  _9 = posColuna.337_7 - subColuna.338_8;
  coluna = _9;
  linha.339_10 = linha;
  snprintf (&linhaSt, 3, "%d", linha.339_10);
  coluna.340_11 = coluna;
  snprintf (&colunaSt, 3, "%d", coluna.340_11);
  posParser.341_12 = posParser;
  posParser.342_13 = posParser.341_12;
  _14 = posParser.342_13 + 1;
  posParser = _14;
  tk.343_15 = tk;
  tksParser[posParser.342_13] = tk.343_15;
  posParser.344_16 = posParser;
  posParser.345_17 = posParser.344_16;
  _18 = posParser.345_17 + 1;
  posParser = _18;
  linha.346_19 = linha;
  tksParser[posParser.345_17] = linha.346_19;
  posParser.347_20 = posParser;
  posParser.348_21 = posParser.347_20;
  _22 = posParser.348_21 + 1;
  posParser = _22;
  coluna.349_23 = coluna;
  tksParser[posParser.348_21] = coluna.349_23;
  posParserLex.350_24 = posParserLex;
  posParserLex.351_25 = posParserLex.350_24;
  _26 = posParserLex.351_25 + 1;
  posParserLex = _26;
  _27 = &tksParserLex[posParserLex.351_25];
  strcpy (_27, &lex);
  linhaSt = {CLOBBER};
  colunaSt = {CLOBBER};
  <D.5641>:
  _28 = le_token (&conteudo, &lex);
  tk = _28;
  tk.352_29 = tk;
  if (tk.352_29 != -1) goto <D.5640>; else goto <D.5642>;
  <D.5642>:
  fclose (entrada);
  posParser = 0;
  posParserLex = 0;
  getToken ();
  _30 = PROGC ();
  if (_30 != 0) goto <D.6605>; else goto <D.6606>;
  <D.6605>:
  printf ("Sucesso no reconhecimento sint\xc3\xa1tico\nPressione ENTER para encerrar...");
  getchar ();
  goto <D.6607>;
  <D.6606>:
  printf ("Falha no reconhecimento sint\xc3\xa1tico\nPressione ENTER para encerrar...");
  getchar ();
  <D.6607>:
  D.6608 = 0;
  goto <D.6610>;
  <D.6610>:
  conteudo = {CLOBBER};
  lex = {CLOBBER};
  goto <D.6609>;
  D.6608 = 0;
  goto <D.6609>;
  <D.6609>:
  return D.6608;
}



;; Function snprintf (snprintf, funcdef_no=6, decl_uid=3004, cgraph_uid=6, symbol_order=6)

__attribute__((unused))
snprintf (char * restrict __stream, size_t __n, const char * restrict __format)
{
  char * __local_argv;
  int __retval;
  int D.6611;

  __builtin_va_start (&__local_argv, 0);
  __local_argv.353_1 = __local_argv;
  __retval = __ms_vsnprintf (__stream, __n, __format, __local_argv.353_1);
  __builtin_va_end (&__local_argv);
  D.6611 = __retval;
  goto <D.6613>;
  <D.6613>:
  __local_argv = {CLOBBER};
  goto <D.6612>;
  <D.6612>:
  return D.6611;
}


