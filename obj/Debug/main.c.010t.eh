
;; Function le_char (le_char, funcdef_no=17, decl_uid=4913, cgraph_uid=17, symbol_order=24)

le_char ()
{
  char c;
  char D.5021;

  arqin.0_1 = arqin;
  _2 = fread (&c, 1, 1, arqin.0_1);
  if (_2 == 0) goto <D.5019>; else goto <D.5020>;
  <D.5019>:
  D.5021 = -1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5026>;
  <D.5020>:
  c.1_3 = c;
  if (c.1_3 == 10) goto <D.5022>; else goto <D.5023>;
  <D.5022>:
  linlex.2_4 = linlex;
  _5 = linlex.2_4 + 1;
  linlex = _5;
  collex = 1;
  goto <D.5024>;
  <D.5023>:
  collex.3_6 = collex;
  _7 = collex.3_6 + 1;
  collex = _7;
  <D.5024>:
  D.5021 = c;
  goto <D.5026>;
  <D.5026>:
  c = {CLOBBER};
  goto <D.5025>;
  <D.5025>:
  return D.5021;
}



;; Function pal_res (pal_res, funcdef_no=18, decl_uid=4917, cgraph_uid=18, symbol_order=25)

pal_res (char * lex)
{
  int tk;
  int D.5029;

  tk = 0;
  goto <D.4921>;
  <D.4920>:
  _1 = &reservadas[tk].palavra;
  _2 = strcmp (lex, _1);
  if (_2 == 0) goto <D.5027>; else goto <D.5028>;
  <D.5027>:
  D.5029 = reservadas[tk].token;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5030>;
  <D.5028>:
  tk = tk + 1;
  <D.4921>:
  _3 = &reservadas[tk].palavra;
  _4 = strcmp (_3, "fim");
  if (_4 != 0) goto <D.4920>; else goto <D.4922>;
  <D.4922>:
  D.5029 = 28;
  goto <D.5030>;
  <D.5030>:
  return D.5029;
}



;; Function le_token (le_token, funcdef_no=19, decl_uid=4923, cgraph_uid=19, symbol_order=26)

le_token ()
{
  static char c = 0;
  static int estado = 0;
  static int pos = 0;
  int D.5033;

  <D.4932>:
  estado.4_1 = estado;
  switch (estado.4_1) <default: <D.5095>, case 0: <D.4928>, case 1: <D.4930>, case 2: <D.4931>>
  <D.4928>:
  c.5_2 = c;
  if (c.5_2 == 44) goto <D.5031>; else goto <D.5032>;
  <D.5031>:
  _3 = le_char ();
  c = _3;
  D.5033 = 20;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5032>:
  c.6_4 = c;
  if (c.6_4 == 43) goto <D.5034>; else goto <D.5035>;
  <D.5034>:
  _5 = le_char ();
  c = _5;
  D.5033 = 15;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5035>:
  c.7_6 = c;
  if (c.7_6 == 45) goto <D.5036>; else goto <D.5037>;
  <D.5036>:
  _7 = le_char ();
  c = _7;
  D.5033 = 16;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5037>:
  c.8_8 = c;
  if (c.8_8 == 42) goto <D.5038>; else goto <D.5039>;
  <D.5038>:
  _9 = le_char ();
  c = _9;
  D.5033 = 17;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5039>:
  c.9_10 = c;
  if (c.9_10 == 123) goto <D.5040>; else goto <D.5041>;
  <D.5040>:
  _11 = le_char ();
  c = _11;
  D.5033 = 10;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5041>:
  c.10_12 = c;
  if (c.10_12 == 125) goto <D.5042>; else goto <D.5043>;
  <D.5042>:
  _13 = le_char ();
  c = _13;
  D.5033 = 11;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5043>:
  c.11_14 = c;
  if (c.11_14 == 59) goto <D.5044>; else goto <D.5045>;
  <D.5044>:
  _15 = le_char ();
  c = _15;
  D.5033 = 21;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5045>:
  c.12_16 = c;
  if (c.12_16 == 91) goto <D.5046>; else goto <D.5047>;
  <D.5046>:
  _17 = le_char ();
  c = _17;
  D.5033 = 8;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5047>:
  c.13_18 = c;
  if (c.13_18 == 93) goto <D.5048>; else goto <D.5049>;
  <D.5048>:
  _19 = le_char ();
  c = _19;
  D.5033 = 9;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5049>:
  c.14_20 = c;
  if (c.14_20 == 40) goto <D.5050>; else goto <D.5051>;
  <D.5050>:
  _21 = le_char ();
  c = _21;
  D.5033 = 18;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5051>:
  c.15_22 = c;
  if (c.15_22 == 41) goto <D.5052>; else goto <D.5053>;
  <D.5052>:
  _23 = le_char ();
  c = _23;
  D.5033 = 19;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5053>:
  c.16_24 = c;
  if (c.16_24 == 61) goto <D.5054>; else goto <D.5055>;
  <D.5054>:
  _25 = le_char ();
  c = _25;
  c.17_26 = c;
  if (c.17_26 == 61) goto <D.5056>; else goto <D.5057>;
  <D.5056>:
  _27 = le_char ();
  c = _27;
  D.5033 = 26;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5057>:
  D.5033 = 13;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5055>:
  c.18_28 = c;
  if (c.18_28 == 60) goto <D.5058>; else goto <D.5059>;
  <D.5058>:
  _29 = le_char ();
  c = _29;
  c.19_30 = c;
  if (c.19_30 == 61) goto <D.5060>; else goto <D.5061>;
  <D.5060>:
  _31 = le_char ();
  c = _31;
  D.5033 = 24;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5061>:
  D.5033 = 23;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5059>:
  c.20_32 = c;
  if (c.20_32 == 62) goto <D.5062>; else goto <D.5063>;
  <D.5062>:
  _33 = le_char ();
  c = _33;
  c.21_34 = c;
  if (c.21_34 == 61) goto <D.5064>; else goto <D.5065>;
  <D.5064>:
  _35 = le_char ();
  c = _35;
  D.5033 = 25;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5065>:
  D.5033 = 22;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5063>:
  c.22_36 = c;
  if (c.22_36 == 33) goto <D.5066>; else goto <D.5067>;
  <D.5066>:
  _37 = le_char ();
  c = _37;
  c.23_38 = c;
  if (c.23_38 == 61) goto <D.5068>; else goto <D.5069>;
  <D.5068>:
  _39 = le_char ();
  c = _39;
  D.5033 = 27;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5069>:
  <D.5067>:
  c.24_40 = c;
  if (c.24_40 > 96) goto <D.5073>; else goto <D.5070>;
  <D.5073>:
  c.25_41 = c;
  if (c.25_41 <= 122) goto <D.5071>; else goto <D.5070>;
  <D.5070>:
  c.26_42 = c;
  if (c.26_42 == 95) goto <D.5071>; else goto <D.5072>;
  <D.5071>:
  c.27_43 = c;
  lex[0] = c.27_43;
  _44 = le_char ();
  c = _44;
  pos = 1;
  estado = 1;
  goto <D.4929>;
  <D.5072>:
  c.28_45 = c;
  if (c.28_45 > 47) goto <D.5074>; else goto <D.5075>;
  <D.5074>:
  c.29_46 = c;
  if (c.29_46 <= 57) goto <D.5076>; else goto <D.5077>;
  <D.5076>:
  c.30_47 = c;
  lex[0] = c.30_47;
  _48 = le_char ();
  c = _48;
  pos = 1;
  estado = 2;
  goto <D.4929>;
  <D.5077>:
  <D.5075>:
  c.31_49 = c;
  if (c.31_49 == -1) goto <D.5078>; else goto <D.5079>;
  <D.5078>:
  D.5033 = 12;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.5079>:
  c.32_50 = c;
  if (c.32_50 == 10) goto <D.5080>; else goto <D.5082>;
  <D.5082>:
  c.33_51 = c;
  if (c.33_51 == 13) goto <D.5080>; else goto <D.5083>;
  <D.5083>:
  c.34_52 = c;
  if (c.34_52 == 9) goto <D.5080>; else goto <D.5084>;
  <D.5084>:
  c.35_53 = c;
  if (c.35_53 == 0) goto <D.5080>; else goto <D.5085>;
  <D.5085>:
  c.36_54 = c;
  if (c.36_54 == 32) goto <D.5080>; else goto <D.5081>;
  <D.5080>:
  _55 = le_char ();
  c = _55;
  goto <D.4929>;
  <D.5081>:
  <D.4930>:
  c.37_56 = c;
  if (c.37_56 > 96) goto <D.5089>; else goto <D.5086>;
  <D.5089>:
  c.38_57 = c;
  if (c.38_57 <= 122) goto <D.5087>; else goto <D.5086>;
  <D.5086>:
  c.39_58 = c;
  if (c.39_58 == 95) goto <D.5087>; else goto <D.5090>;
  <D.5090>:
  c.40_59 = c;
  if (c.40_59 > 47) goto <D.5091>; else goto <D.5088>;
  <D.5091>:
  c.41_60 = c;
  if (c.41_60 <= 57) goto <D.5087>; else goto <D.5088>;
  <D.5087>:
  pos.42_61 = pos;
  pos.43_62 = pos.42_61;
  _63 = pos.43_62 + 1;
  pos = _63;
  c.44_64 = c;
  lex[pos.43_62] = c.44_64;
  _65 = le_char ();
  c = _65;
  goto <D.4929>;
  <D.5088>:
  estado = 0;
  pos.45_66 = pos;
  lex[pos.45_66] = 0;
  D.5033 = pal_res (&lex);
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.4931>:
  c.46_67 = c;
  if (c.46_67 > 47) goto <D.5093>; else goto <D.5092>;
  <D.5093>:
  c.47_68 = c;
  if (c.47_68 <= 57) goto <D.5094>; else goto <D.5092>;
  <D.5094>:
  pos.48_69 = pos;
  pos.49_70 = pos.48_69;
  _71 = pos.49_70 + 1;
  pos = _71;
  c.50_72 = c;
  lex[pos.49_70] = c.50_72;
  _73 = le_char ();
  c = _73;
  goto <D.4929>;
  <D.5092>:
  estado = 0;
  pos.51_74 = pos;
  lex[pos.51_74] = 0;
  D.5033 = 14;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5096>;
  <D.4929>:
  <D.5095>:
  goto <D.4932>;
  <D.5096>:
  return D.5033;
}



;; Function mostra_t (mostra_t, funcdef_no=20, decl_uid=4933, cgraph_uid=20, symbol_order=27)

mostra_t ()
{
  collex.52_1 = collex;
  linlex.53_2 = linlex;
  token.54_3 = token;
  _4 = &tokens[token.54_3];
  printf ("%s lex=%s na lin %d, col %d\n", _4, &lex, linlex.53_2, collex.52_1);
  return;
}



;; Function Rel (Rel, funcdef_no=21, decl_uid=4948, cgraph_uid=21, symbol_order=28)

Rel (char * Rel_c)
{
  char op[10];
  char R_s[1000];
  char E2_c[1000];
  char E1_c[1000];
  int D.5125;

  __builtin_puts (&"Entrei no Rel"[0]);
  _1 = E (&E1_c);
  if (_1 != 0) goto <D.5097>; else goto <D.5098>;
  <D.5097>:
  token.55_2 = token;
  if (token.55_2 == 22) goto <D.5099>; else goto <D.5100>;
  <D.5099>:
  __builtin_memcpy (&op, ">", 2);
  goto <D.5101>;
  <D.5100>:
  token.56_3 = token;
  if (token.56_3 == 23) goto <D.5102>; else goto <D.5103>;
  <D.5102>:
  __builtin_memcpy (&op, "<", 2);
  goto <D.5104>;
  <D.5103>:
  token.57_4 = token;
  if (token.57_4 == 26) goto <D.5105>; else goto <D.5106>;
  <D.5105>:
  __builtin_memcpy (&op, "=", 2);
  goto <D.5107>;
  <D.5106>:
  token.58_5 = token;
  if (token.58_5 == 27) goto <D.5108>; else goto <D.5109>;
  <D.5108>:
  __builtin_memcpy (&op, "<>", 3);
  goto <D.5110>;
  <D.5109>:
  token.59_6 = token;
  if (token.59_6 == 25) goto <D.5111>; else goto <D.5112>;
  <D.5111>:
  __builtin_memcpy (&op, ">=", 3);
  goto <D.5113>;
  <D.5112>:
  token.60_7 = token;
  if (token.60_7 == 24) goto <D.5114>; else goto <D.5115>;
  <D.5114>:
  __builtin_memcpy (&op, "<=", 3);
  <D.5115>:
  <D.5113>:
  <D.5110>:
  <D.5107>:
  <D.5104>:
  <D.5101>:
  token.61_8 = token;
  _9 = &tokens[token.61_8];
  printf ("Voltei do E, token \xef\xbf\xbd %s op \xef\xbf\xbd %s", _9, &op);
  token.62_10 = token;
  if (token.62_10 == 22) goto <D.5116>; else goto <D.5118>;
  <D.5118>:
  token.63_11 = token;
  if (token.63_11 == 23) goto <D.5116>; else goto <D.5119>;
  <D.5119>:
  token.64_12 = token;
  if (token.64_12 == 26) goto <D.5116>; else goto <D.5120>;
  <D.5120>:
  token.65_13 = token;
  if (token.65_13 == 27) goto <D.5116>; else goto <D.5121>;
  <D.5121>:
  token.66_14 = token;
  if (token.66_14 == 25) goto <D.5116>; else goto <D.5122>;
  <D.5122>:
  token.67_15 = token;
  if (token.67_15 == 24) goto <D.5116>; else goto <D.5117>;
  <D.5116>:
  _16 = le_token ();
  token = _16;
  _17 = E (&E2_c);
  if (_17 != 0) goto <D.5123>; else goto <D.5124>;
  <D.5123>:
  token.68_18 = token;
  _19 = &tokens[token.68_18];
  printf ("Voltei do E2, token \xef\xbf\xbd %s", _19);
  sprintf (Rel_c, "%s%s\t%s\n", &E1_c, &E2_c, &op);
  D.5125 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5127>;
  <D.5124>:
  D.5125 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5127>;
  <D.5117>:
  strcpy (Rel_c, &E1_c);
  __builtin_puts (&"Vou retornar 1 no E"[0]);
  D.5125 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5127>;
  <D.5127>:
  op = {CLOBBER};
  goto <D.5128>;
  <D.5098>:
  D.5125 = 0;
  goto <D.5128>;
  <D.5128>:
  E1_c = {CLOBBER};
  E2_c = {CLOBBER};
  R_s = {CLOBBER};
  goto <D.5126>;
  <D.5126>:
  return D.5125;
}



;; Function E (E, funcdef_no=22, decl_uid=4938, cgraph_uid=22, symbol_order=29)

E (char * E_c)
{
  char R_s[1000];
  char R_h[1000];
  char T_c[1000];
  int D.5133;

  __builtin_puts (&"Entrei no E"[0]);
  _1 = T (&T_c);
  if (_1 != 0) goto <D.5129>; else goto <D.5130>;
  <D.5129>:
  strcpy (&R_h, &T_c);
  _2 = R (&R_h, &R_s);
  if (_2 != 0) goto <D.5131>; else goto <D.5132>;
  <D.5131>:
  strcpy (E_c, &R_s);
  __builtin_puts (&"Vou retornar 1 no E"[0]);
  D.5133 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5135>;
  <D.5132>:
  <D.5130>:
  D.5133 = 0;
  goto <D.5135>;
  <D.5135>:
  T_c = {CLOBBER};
  R_h = {CLOBBER};
  R_s = {CLOBBER};
  goto <D.5134>;
  <D.5134>:
  return D.5133;
}



;; Function R (R, funcdef_no=23, decl_uid=4941, cgraph_uid=23, symbol_order=30)

R (char * R_h, char * R_s)
{
  char R1_s[1000];
  char R1_h[1000];
  char T_c[1000];
  long long unsigned int D.5149;
  int D.5144;
  long long unsigned int D.5140;
  char[1000] * D.5150;
  char[1000] * D.5141;

  __builtin_puts (&"Entrei no R (+TR | -TR)"[0]);
  token.69_1 = token;
  if (token.69_1 == 15) goto <D.5136>; else goto <D.5137>;
  <D.5136>:
  _2 = le_token ();
  token = _2;
  _3 = T (&T_c);
  if (_3 != 0) goto <D.5138>; else goto <D.5139>;
  <D.5138>:
  strcpy (&R1_h, R_h);
  strcat (&R1_h, &T_c);
  D.5140 = __builtin_strlen (&R1_h);
  D.5141 = &R1_h + D.5140;
  __builtin_memcpy (D.5141, "\t+\n", 4);
  _4 = R (&R1_h, &R1_s);
  if (_4 != 0) goto <D.5142>; else goto <D.5143>;
  <D.5142>:
  strcpy (R_s, &R1_s);
  D.5144 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5154>;
  <D.5143>:
  <D.5139>:
  D.5144 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5154>;
  <D.5137>:
  token.70_5 = token;
  if (token.70_5 == 16) goto <D.5145>; else goto <D.5146>;
  <D.5145>:
  _6 = le_token ();
  token = _6;
  _7 = T (&T_c);
  if (_7 != 0) goto <D.5147>; else goto <D.5148>;
  <D.5147>:
  strcpy (&R1_h, R_h);
  strcat (&R1_h, &T_c);
  D.5149 = __builtin_strlen (&R1_h);
  D.5150 = &R1_h + D.5149;
  __builtin_memcpy (D.5150, "\t-\n", 4);
  _8 = R (&R1_h, &R1_s);
  if (_8 != 0) goto <D.5151>; else goto <D.5152>;
  <D.5151>:
  strcpy (R_s, &R1_s);
  D.5144 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5154>;
  <D.5152>:
  <D.5148>:
  D.5144 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5154>;
  <D.5146>:
  strcpy (R_s, R_h);
  __builtin_puts (&"Vou retornar 1 no R"[0]);
  D.5144 = 1;
  goto <D.5154>;
  <D.5154>:
  T_c = {CLOBBER};
  R1_h = {CLOBBER};
  R1_s = {CLOBBER};
  goto <D.5153>;
  <D.5153>:
  return D.5144;
}



;; Function T (T, funcdef_no=24, decl_uid=4936, cgraph_uid=24, symbol_order=31)

T (char * T_c)
{
  char S_s[1000];
  char S_h[1000];
  char F_c[1000];
  int D.5159;

  __builtin_puts (&"Entrei no T"[0]);
  _1 = F (&F_c);
  if (_1 != 0) goto <D.5155>; else goto <D.5156>;
  <D.5155>:
  strcpy (&S_h, &F_c);
  _2 = S (&S_h, &S_s);
  if (_2 != 0) goto <D.5157>; else goto <D.5158>;
  <D.5157>:
  strcpy (T_c, &S_s);
  D.5159 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5161>;
  <D.5158>:
  <D.5156>:
  D.5159 = 0;
  goto <D.5161>;
  <D.5161>:
  F_c = {CLOBBER};
  S_h = {CLOBBER};
  S_s = {CLOBBER};
  goto <D.5160>;
  <D.5160>:
  return D.5159;
}



;; Function S (S, funcdef_no=25, decl_uid=4946, cgraph_uid=25, symbol_order=32)

S (char * S_h, char * S_s)
{
  char S1_s[1000];
  char S1_h[1000];
  char F_c[1000];
  int D.5170;
  long long unsigned int D.5166;
  char[1000] * D.5167;

  __builtin_puts (&"Entrei no S (*FS)"[0]);
  token.71_1 = token;
  if (token.71_1 == 17) goto <D.5162>; else goto <D.5163>;
  <D.5162>:
  _2 = le_token ();
  token = _2;
  _3 = F (&F_c);
  if (_3 != 0) goto <D.5164>; else goto <D.5165>;
  <D.5164>:
  strcpy (&S1_h, S_h);
  strcat (&S1_h, &F_c);
  D.5166 = __builtin_strlen (&S1_h);
  D.5167 = &S1_h + D.5166;
  __builtin_memcpy (D.5167, "\t*\n", 4);
  _4 = S (&S1_h, &S1_s);
  if (_4 != 0) goto <D.5168>; else goto <D.5169>;
  <D.5168>:
  strcpy (S_s, &S1_s);
  D.5170 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5172>;
  <D.5169>:
  <D.5165>:
  D.5170 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5172>;
  <D.5163>:
  strcpy (S_s, S_h);
  __builtin_puts (&"Vou retornar 1 no S"[0]);
  D.5170 = 1;
  goto <D.5172>;
  <D.5172>:
  F_c = {CLOBBER};
  S1_h = {CLOBBER};
  S1_s = {CLOBBER};
  goto <D.5171>;
  <D.5171>:
  return D.5170;
}



;; Function F (F, funcdef_no=26, decl_uid=4943, cgraph_uid=26, symbol_order=33)

F (char * F_c)
{
  char E_c[1000];
  long long unsigned int D.5180;
  int D.5177;
  long long unsigned int D.5175;
  char * D.5181;
  char * D.5176;

  __builtin_puts (&"Entrei no F"[0]);
  token.72_1 = token;
  if (token.72_1 == 14) goto <D.5173>; else goto <D.5174>;
  <D.5173>:
  __builtin_memcpy (F_c, "\tpush ", 7);
  strcat (F_c, &lex);
  D.5175 = __builtin_strlen (F_c);
  D.5176 = F_c + D.5175;
  __builtin_memcpy (D.5176, "\n", 2);
  _2 = le_token ();
  token = _2;
  D.5177 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5188>;
  <D.5174>:
  token.73_3 = token;
  if (token.73_3 == 28) goto <D.5178>; else goto <D.5179>;
  <D.5178>:
  __builtin_memcpy (F_c, "\tvalor-r ", 10);
  strcat (F_c, &lex);
  D.5180 = __builtin_strlen (F_c);
  D.5181 = F_c + D.5180;
  __builtin_memcpy (D.5181, "\n", 2);
  _4 = le_token ();
  token = _4;
  D.5177 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5188>;
  <D.5179>:
  token.74_5 = token;
  if (token.74_5 == 18) goto <D.5182>; else goto <D.5183>;
  <D.5182>:
  _6 = le_token ();
  token = _6;
  _7 = E (&E_c);
  if (_7 != 0) goto <D.5184>; else goto <D.5185>;
  <D.5184>:
  token.75_8 = token;
  if (token.75_8 == 19) goto <D.5186>; else goto <D.5187>;
  <D.5186>:
  _9 = le_token ();
  token = _9;
  strcpy (F_c, &E_c);
  D.5177 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5190>;
  <D.5187>:
  <D.5185>:
  E_c = {CLOBBER};
  goto <D.5189>;
  <D.5190>:
  E_c = {CLOBBER};
  goto <D.5188>;
  <D.5189>:
  <D.5183>:
  D.5177 = 0;
  goto <D.5188>;
  <D.5188>:
  return D.5177;
}



;; Function Lista_Com (Lista_Com, funcdef_no=27, decl_uid=4987, cgraph_uid=27, symbol_order=34)

Lista_Com (char * Lista_Com_c)
{
  char Com_c[1000];
  char LL_c[1000];
  int D.5193;

  __builtin_puts (&"Entrei no Lista_Com"[0]);
  token.76_1 = token;
  _2 = &tokens[token.76_1];
  printf ("Vou testar Com - token \xef\xbf\xbd %s\n", _2);
  token.77_3 = token;
  if (token.77_3 == 12) goto <D.5191>; else goto <D.5192>;
  <D.5191>:
  D.5193 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5209>;
  <D.5192>:
  token.78_4 = token;
  if (token.78_4 != 28) goto <D.5194>; else goto <D.5195>;
  <D.5194>:
  token.79_5 = token;
  if (token.79_5 != 21) goto <D.5196>; else goto <D.5197>;
  <D.5196>:
  token.80_6 = token;
  if (token.80_6 != 5) goto <D.5198>; else goto <D.5199>;
  <D.5198>:
  token.81_7 = token;
  if (token.81_7 != 7) goto <D.5200>; else goto <D.5201>;
  <D.5200>:
  __builtin_memcpy (Lista_Com_c, "", 1);
  D.5193 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5209>;
  <D.5201>:
  <D.5199>:
  <D.5197>:
  <D.5195>:
  _8 = Com (&Com_c);
  if (_8 != 0) goto <D.5202>; else goto <D.5203>;
  <D.5202>:
  token.82_9 = token;
  _10 = &tokens[token.82_9];
  printf ("B - token \xef\xbf\xbd %s\n", _10);
  _11 = Lista_Com (&LL_c);
  if (_11 != 0) goto <D.5204>; else goto <D.5205>;
  <D.5204>:
  strcpy (Lista_Com_c, &Com_c);
  strcat (Lista_Com_c, &LL_c);
  token.83_12 = token;
  _13 = &tokens[token.83_12];
  printf ("Vou retornar 1 no Lista_Com. Token \xef\xbf\xbd %s\n", _13);
  D.5193 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5209>;
  <D.5205>:
  token.84_14 = token;
  _15 = &tokens[token.84_14];
  printf ("Vou retornar 0 no Lista_Com-1 - token \xef\xbf\xbd %s\n", _15);
  D.5193 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5209>;
  <D.5203>:
  token.85_16 = token;
  if (token.85_16 == 12) goto <D.5206>; else goto <D.5207>;
  <D.5206>:
  D.5193 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5209>;
  <D.5207>:
  __builtin_puts (&"Vou retornar 0 no Lista_Com-2"[0]);
  D.5193 = 0;
  goto <D.5209>;
  <D.5209>:
  LL_c = {CLOBBER};
  Com_c = {CLOBBER};
  goto <D.5208>;
  <D.5208>:
  return D.5193;
}



;; Function geralabel (geralabel, funcdef_no=28, decl_uid=4994, cgraph_uid=28, symbol_order=35)

geralabel (char * label)
{
  static int numlabel = 0;

  numlabel.86_1 = numlabel;
  numlabel.87_2 = numlabel.86_1;
  _3 = numlabel.87_2 + 1;
  numlabel = _3;
  sprintf (label, "LB%03d", numlabel.87_2);
  return;
}



;; Function Com (Com, funcdef_no=29, decl_uid=4985, cgraph_uid=29, symbol_order=36)

Com (char * Com_c)
{
  char Lista_Com_c[1000];
  char E_c[1000];
  char id[10];
  char Com1_c[1000];
  char labelfim[10];
  char labelinicio[10];
  char Com2_c[1000];
  char Com3_c[1000];
  char labelfim[10];
  char labelelse[10];
  char Rel_c[1000];
  long long unsigned int D.5245;
  long long unsigned int D.5243;
  int D.5224;
  char * D.5246;
  char * D.5244;

  __builtin_puts (&"Entrei no Com"[0]);
  token.88_1 = token;
  if (token.88_1 == 5) goto <D.5210>; else goto <D.5211>;
  <D.5210>:
  geralabel (&labelelse);
  geralabel (&labelfim);
  _2 = le_token ();
  token = _2;
  token.89_3 = token;
  if (token.89_3 == 18) goto <D.5212>; else goto <D.5213>;
  <D.5212>:
  _4 = le_token ();
  token = _4;
  _5 = Rel (&Rel_c);
  if (_5 != 0) goto <D.5214>; else goto <D.5215>;
  <D.5214>:
  token.90_6 = token;
  if (token.90_6 == 19) goto <D.5216>; else goto <D.5217>;
  <D.5216>:
  _7 = le_token ();
  token = _7;
  _8 = Com (&Com3_c);
  if (_8 != 0) goto <D.5218>; else goto <D.5219>;
  <D.5218>:
  token.91_9 = token;
  if (token.91_9 == 6) goto <D.5220>; else goto <D.5221>;
  <D.5220>:
  _10 = le_token ();
  token = _10;
  _11 = Com (&Com2_c);
  if (_11 != 0) goto <D.5222>; else goto <D.5223>;
  <D.5222>:
  sprintf (Com_c, "%s\tgofalse %s\n%s\tgoto %s\nrotulo %s\n%srotulo %s", &Rel_c, &labelelse, &Com3_c, &labelfim, &labelelse, &Com2_c, &labelfim);
  D.5224 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5258>;
  <D.5223>:
  __builtin_puts (&"Erro no comando do else"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5258>;
  <D.5258>:
  Com2_c = {CLOBBER};
  goto <D.5259>;
  <D.5221>:
  __builtin_puts (&"Esperava palavra else"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5259>;
  <D.5219>:
  __builtin_puts (&"Esperava fecha par\xef\xbf\xbdnteses"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5259>;
  <D.5259>:
  Com3_c = {CLOBBER};
  goto <D.5260>;
  <D.5217>:
  __builtin_puts (&"Erro na express\xef\xbf\xbdo do if "[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5260>;
  <D.5215>:
  __builtin_puts (&"Esperava abre par\xef\xbf\xbdnteses"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5260>;
  <D.5213>:
  __builtin_puts (&"Esperava abre par\xef\xbf\xbdnteses"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5260>;
  <D.5260>:
  labelelse = {CLOBBER};
  labelfim = {CLOBBER};
  goto <D.5270>;
  <D.5211>:
  token.92_12 = token;
  if (token.92_12 == 7) goto <D.5225>; else goto <D.5226>;
  <D.5225>:
  geralabel (&labelinicio);
  geralabel (&labelfim);
  _13 = le_token ();
  token = _13;
  token.93_14 = token;
  if (token.93_14 == 18) goto <D.5227>; else goto <D.5228>;
  <D.5227>:
  _15 = le_token ();
  token = _15;
  _16 = Rel (&Rel_c);
  if (_16 != 0) goto <D.5229>; else goto <D.5230>;
  <D.5229>:
  token.94_17 = token;
  if (token.94_17 == 19) goto <D.5231>; else goto <D.5232>;
  <D.5231>:
  _18 = le_token ();
  token = _18;
  _19 = Com (&Com1_c);
  if (_19 != 0) goto <D.5233>; else goto <D.5234>;
  <D.5233>:
  sprintf (Com_c, "rotulo %s\n%s\tgofalse %s\n%s\tgoto %s\nrotulo %s\n", &labelinicio, &Rel_c, &labelfim, &Com1_c, &labelinicio, &labelfim);
  D.5224 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5261>;
  <D.5234>:
  __builtin_puts (&"Esperava fecha par\xef\xbf\xbdnteses"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5261>;
  <D.5261>:
  Com1_c = {CLOBBER};
  goto <D.5262>;
  <D.5232>:
  __builtin_puts (&"Erro na condi\xef\xbf\xbd\xef\xbf\xbdo do while"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5262>;
  <D.5230>:
  __builtin_puts (&"Esperava abre par\xef\xbf\xbdnteses"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5262>;
  <D.5228>:
  __builtin_puts (&"Esperava abre par\xef\xbf\xbdnteses"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5262>;
  <D.5262>:
  labelinicio = {CLOBBER};
  labelfim = {CLOBBER};
  goto <D.5270>;
  <D.5226>:
  token.95_20 = token;
  if (token.95_20 == 28) goto <D.5235>; else goto <D.5236>;
  <D.5235>:
  strcpy (&id, &lex);
  _21 = le_token ();
  token = _21;
  token.96_22 = token;
  if (token.96_22 == 13) goto <D.5237>; else goto <D.5238>;
  <D.5237>:
  _23 = le_token ();
  token = _23;
  _24 = Rel (&E_c);
  if (_24 != 0) goto <D.5239>; else goto <D.5240>;
  <D.5239>:
  token.97_25 = token;
  if (token.97_25 == 21) goto <D.5241>; else goto <D.5242>;
  <D.5241>:
  _26 = le_token ();
  token = _26;
  __builtin_memcpy (Com_c, "\tvalor-l ", 10);
  strcat (Com_c, &id);
  D.5243 = __builtin_strlen (Com_c);
  D.5244 = Com_c + D.5243;
  __builtin_memcpy (D.5244, "\n", 2);
  strcat (Com_c, &E_c);
  D.5245 = __builtin_strlen (Com_c);
  D.5246 = Com_c + D.5245;
  __builtin_memcpy (D.5246, "\t:=\n\tpop\n", 10);
  __builtin_puts (&"Vou retornar 1 no Com"[0]);
  D.5224 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5264>;
  <D.5242>:
  __builtin_puts (&"Faltou ponto-e-v\xef\xbf\xbdrgula ap\xef\xbf\xbds atribui\xef\xbf\xbd\xef\xbf\xbdo"[0]);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5264>;
  <D.5240>:
  E_c = {CLOBBER};
  goto <D.5263>;
  <D.5264>:
  E_c = {CLOBBER};
  goto <D.5266>;
  <D.5263>:
  <D.5238>:
  id = {CLOBBER};
  goto <D.5265>;
  <D.5266>:
  id = {CLOBBER};
  goto <D.5270>;
  <D.5265>:
  goto <D.5247>;
  <D.5236>:
  token.98_27 = token;
  if (token.98_27 == 10) goto <D.5248>; else goto <D.5249>;
  <D.5248>:
  _28 = le_token ();
  token = _28;
  __builtin_puts (&"Consumi o abre chaves"[0]);
  _29 = Lista_Com (&Lista_Com_c);
  if (_29 != 0) goto <D.5250>; else goto <D.5251>;
  <D.5250>:
  token.99_30 = token;
  _31 = &tokens[token.99_30];
  printf ("Voltei do Lista_Com. Token=%s\n", _31);
  token.100_32 = token;
  if (token.100_32 == 11) goto <D.5252>; else goto <D.5253>;
  <D.5252>:
  _33 = le_token ();
  token = _33;
  __builtin_puts (&"Consumi o fecha chaves"[0]);
  strcpy (Com_c, &Lista_Com_c);
  D.5224 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5268>;
  <D.5253>:
  linlex.101_34 = linlex;
  printf ("Esperava fecha chaves na linha %d", linlex.101_34);
  D.5224 = 0;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5268>;
  <D.5251>:
  Lista_Com_c = {CLOBBER};
  goto <D.5267>;
  <D.5268>:
  Lista_Com_c = {CLOBBER};
  goto <D.5270>;
  <D.5267>:
  goto <D.5254>;
  <D.5249>:
  token.102_35 = token;
  if (token.102_35 == 21) goto <D.5255>; else goto <D.5256>;
  <D.5255>:
  __builtin_puts (&"Vou retornar 1 no Com com ponto e virgula"[0]);
  _36 = le_token ();
  token = _36;
  D.5224 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5270>;
  <D.5256>:
  token.103_37 = token;
  _38 = &tokens[token.103_37];
  printf ("Vou retornar 0 no Com vazio - token \xef\xbf\xbd %s\n", _38);
  D.5224 = 1;
  // predicted unlikely by early return (on trees) predictor.
  goto <D.5270>;
  <D.5254>:
  <D.5247>:
  Rel_c = {CLOBBER};
  goto <D.5269>;
  <D.5270>:
  Rel_c = {CLOBBER};
  goto <D.5257>;
  <D.5269>:
  return;
  <D.5257>:
  return D.5224;
}



;; Function main (main, funcdef_no=30, decl_uid=5011, cgraph_uid=30, symbol_order=37)

main ()
{
  char Com_C[1000];
  struct FILE * arqout;
  int D.5278;

  _1 = fopen ("c:\\teste\\prog.cpp", "rt");
  arqin = _1;
  arqin.104_2 = arqin;
  if (arqin.104_2 == 0B) goto <D.5271>; else goto <D.5272>;
  <D.5271>:
  printf ("Erro na abertura do arquivo");
  exit (0);
  <D.5272>:
  arqout = fopen ("c:\\teste\\saida.kvmp", "wt");
  if (arqout == 0B) goto <D.5273>; else goto <D.5274>;
  <D.5273>:
  printf ("Erro na abertura do arquivo de saida");
  exit (0);
  <D.5274>:
  _3 = le_token ();
  token = _3;
  goto <D.5016>;
  <D.5015>:
  _4 = Lista_Com (&Com_C);
  if (_4 == 0) goto <D.5275>; else goto <D.5276>;
  <D.5275>:
  __builtin_puts (&"Erro no comando!!!"[0]);
  goto <D.5277>;
  <D.5276>:
  __builtin_fputs (&Com_C, arqout);
  printf ("%s", &Com_C);
  <D.5277>:
  getch ();
  <D.5016>:
  token.105_5 = token;
  if (token.105_5 != 12) goto <D.5015>; else goto <D.5017>;
  <D.5017>:
  arqin.106_6 = arqin;
  fclose (arqin.106_6);
  fclose (arqout);
  system ("pause");
  Com_C = {CLOBBER};
  D.5278 = 0;
  goto <D.5279>;
  <D.5279>:
  return D.5278;
}


