/*
 ============================================================================
 Name        : analisador.c
 Author      : Eduardo Eitelven
 Version     : 1.0
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#define FALSE 0
#define TRUE 1
#define TKVoid 2
#define TKInt 3
#define TKFloat 4
#define TKVirgula 5
#define TKDoisPontos 6
#define TKAbrePar 7
#define TKFechaPar 8
#define TKAtribui 9
#define TKPontoeVirg 10
#define TKAbreChave 11
#define TKFechaChave 12
#define TKSoma 13
#define TKId 14
#define TKLong 16
#define TKDouble 17
#define TKShort 18
#define TKPrintf 22
#define TKScanf 23
#define TKFflush 24
#define TKStdin 25
#define TKNULL 26
#define TKDo 29
#define TKWhile 30
#define TKFor 31
#define TKIf 35
#define TKConstante 36
#define TKReturn 37
#define TKAspaSimples 38
#define TKPonto 42
#define TKAspaDupla 43
#define TKPontoExclamacao 45
#define TKDiferente 46
#define TKAbreColchete 47
#define TKFechaColchete 47
#define TKMenos 50
#define TKDecremento 51
#define TKMultiplica 52
#define TKDivisao 53
#define TKMaisIgual 54
#define TKMenosIgual 55
#define TKVezesIgual 56
#define TKDivideIgual 57
#define TKRestoDivisao 58
#define TKMaior 59
#define TKMaiorIgual 60
#define TKMenor 61
#define TKMenorIgual 62
#define TKMenorBinario 63
#define TKMaiorBinario 64
#define TKComparacao 65
#define TKIncremento 66
#define TKDefault 67
#define TKCase 68
#define TKSwitch 69
#define TKGets 79
#define TKElse 80
#define TKBreak 85
#define TKEComers 87
#define TKFree 88
#define TKE 89
#define TKOu 90
#define TKTraco 91
#define TKSetbuf 90
#define TKStdout 91

#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int tk, pos=0, linha=1, erro=0;
long check=0;
char exp1[200], lex[20], local[100];

struct pal_res {
	char palavra[20];
	int tk;
};
struct pal_res lista_pal[] = {
		{ "void", TKVoid },
		{ "int", TKInt },
		{ "float", TKFloat },
		{ "long", TKLong },
		{ "double", TKDouble },
		{ "short", TKShort },
		{ "printf", TKPrintf },
		{ "scanf", TKScanf },
		{ "fflush", TKFflush },
		{ "stdin", TKStdin },
		{ "NULL", TKNULL },
		{ "do", TKDo },
		{ "free", TKFree },
		{ "while", TKWhile },
		{ "for", TKFor },
		{ "if", TKIf },
		{ "case", TKCase },
		{ "return", TKReturn },
		{ "default", TKDefault },
		{ "fflush", TKFflush },
		{ "setbuf", TKSetbuf },
		{ "stdin", TKStdin },
		{ "stdout", TKStdout },
		{ "switch", TKSwitch },
		{ "gets", TKGets },
		{ "break", TKBreak },
		{ "else", TKElse },
		{ "fimtabela", TKId }};

int palavra_reservada(char lex[]) {
	int postab = 0;

	while (strcmp("fimtabela", lista_pal[postab].palavra) != 0) {
		if (strcmp(lex, lista_pal[postab].palavra) == 0)
			return lista_pal[postab].tk;
		postab++;
	}
	return TKId;
}

int rec_equ(char st[]) {
	int estado = 0, fim = 0, posl = 0;
	//free(st);

	while (!fim) {
		char c = st[pos];

		lex[posl++] = c;

		switch (estado) {
		case 0: {
			if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c == '_')) {
				pos++;
				estado = 1;
				break;
			}

			if (c >= '0' && c <= '9') {
				pos++;
				estado = 2;
				break;
			}

			if (c == '=') {
				c = st[++pos];
				if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKComparacao;
				} else {
					lex[posl] = '\0';
					return TKAtribui;
				}
			}

			if (c == '+') {
				c = st[++pos];
				if (c == '+') {
					lex[posl++] = '+';
					lex[posl] = '\0';
					pos++;
					return TKIncremento;
				} else if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKMaisIgual;
				} else {
					lex[posl] = '\0';
					return TKSoma;
				}
			}

			if (c == '!') {
				c = st[++pos];
				if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKDiferente;
				} else {
					lex[posl] = '\0';
					return TKPontoExclamacao;
				}
			}

			if (c == '(') {
				lex[posl] = '\0';
				pos++;
				return TKAbrePar;
			}

			if (c == ')') {
				lex[posl] = '\0';
				pos++;
				return TKFechaPar;
			}

			if (c == '{') {
				lex[posl] = '\0';
				pos++;
				return TKAbreChave;
			}

			if (c == '}') {
				lex[posl] = '\0';
				pos++;
				return TKFechaChave;
			}

			if (c == ',') {
				lex[posl] = '\0';
				pos++;
				return TKVirgula;
			}

			if (c == ';') {
				lex[posl] = '\0';
				pos++;
				return TKPontoeVirg;
			}

			if (c == ':') {
				lex[posl] = '\0';
				pos++;
				return TKDoisPontos;
			}

			if (c == '.') {
				lex[posl] = '\0';
				pos++;
				return TKPonto;
			}

			if (c == '"') {
				lex[posl] = '\0';
				pos++;
				return TKAspaDupla;
			}

			if (c == '[') {
				lex[posl] = '\0';
				pos++;
				return TKAbreColchete;
			}

			if (c == '&') {
				c = st[++pos];
				if (c == '&') {
					lex[posl++] = '&';
					lex[posl] = '\0';
					pos++;
					return TKE;
				} else {
					lex[posl] = '\0';
					return TKEComers;
				}
			}

			if (c == '|') {
				c = st[++pos];
				if (c == '|') {
					lex[posl++] = '|';
					lex[posl] = '\0';
					pos++;
					return TKOu;
				} else {
					lex[posl] = '\0';
					return TKTraco;
				}
			}

			if (c == ']') {
				lex[posl] = '\0';
				pos++;
				return TKFechaColchete;
			}

			if (c == '-') {
				c = st[++pos];
				if (c == '-') {
					lex[posl++] = '-';
					lex[posl] = '\0';
					pos++;
					return TKDecremento;
				} else if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKMenosIgual;
				} else {
					lex[posl] = '\0';
					return TKMenos;
				}
			}

			if (c == '*') {
				c = st[++pos];
				if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKVezesIgual;
				} else {
					lex[posl] = '\0';
					return TKMultiplica;
				}
			}

			if (c == '/') {
				c = st[++pos];
				if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKDivideIgual;
				} else {
					lex[posl] = '\0';
					return TKDivisao;
				}
			}

			if (c == '%') {
				lex[posl] = '\0';
				pos++;
				return TKRestoDivisao;
			}

			if (c == 27) {
				lex[posl] = '\0';
				pos++;
				return TKAspaSimples;
			}

			if (c == '>') {
				c = st[++pos];
				if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKMaiorIgual;
				} else if (c == '>') {
					lex[posl++] = '>';
					lex[posl] = '\0';
					pos++;
					return TKMaiorBinario;
				} else {
					lex[posl] = '\0';
					return TKMaior;
				}
			}

			if (c == '<') {
				c = st[++pos];
				if (c == '=') {
					lex[posl++] = '=';
					lex[posl] = '\0';
					pos++;
					return TKMenorIgual;
				} else if (c == '<') {
					lex[posl++] = '<';
					lex[posl] = '\0';
					pos++;
					return TKMenorBinario;
				} else {
					lex[posl] = '\0';
					return TKMenor;
				}
			}

			if ((c == ' ') || (c == '\n') || (c == '\t') || (c == '\r')) {
				pos++;
				posl--;
				break;
			}

			if (c == '\0')
				return -1;
			return -2;
			break;
		}
		case 1:
			while ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c == '_') || (c >= '0' && c <= '9')) {
				pos++;
				c = st[pos];
				lex[posl++] = c;

				if ((c < 'a' || c > 'z') && (c < 'A' || c > 'Z') && c != '_' && (c < '0' || c > '9') && c == ' '&& c == '\n' && c == '\t' && c == '\0') {
					printf("ERRO: Programa encontrou o lexema %c na linha %d na posicao %d\n", c, linha, pos);
					erro=1;
					return -1;
				}
			}
			lex[--posl] = '\0';
			return palavra_reservada(lex);
		case 2:
			while ((c >= '0' && c <= '9')) {
				pos++;
				c = st[pos];
				lex[posl++] = c;
			}
			lex[--posl] = '\0';
			return TKConstante;
		} //switch
	} // while
	return -1;
} // função

void recebe_token() {
	tk = rec_equ(exp1);
	//if (tk < 2)
	//	recebe_token();
	//printf("%d \n", tk);
}

int abre_chave() {
	if (tk == TKAbreChave)
		return 1;
	return 0;
}

int fecha_chave() {
	if (tk == TKFechaChave)
		return 1;
	return 0;
}

int idd() {
	if (tk == TKId)
		return 1;
	else
		return 0;
}

int abre_par() {
	if (tk == TKAbrePar)
		return 1;
	else
		return 0;
}

int fecha_par() {
	if (tk == TKFechaPar)
		return 1;
	else
		return 0;
}

int abre_col() {
	if (tk == TKAbreColchete)
		return 1;
	else
		return 0;
}

int fecha_col() {
	if (tk == TKFechaColchete)
		return 1;
	else
		return 0;
}

int pto_vir() {
	if (tk == TKPontoeVirg)
		return 1;
	else
		return 0;
}

int virgula() {
	if (tk == TKVirgula)
		return 1;
	else
		return 0;
}

int declara_func() {
	if ((tk == TKInt) || (tk == TKFloat) || (TKLong) || (TKDouble)) {
		recebe_token();

		if (tk == TKId) {
			recebe_token();

			if (pto_vir() == 0) {
				recebe_token();
				declara_func();
			} else if (fecha_par() == 1) {
				return 1;
			}
		}
	} else if (fecha_par() == 1) {
		return 1;
	} else {
		printf("ERRO: Esperava fechar parenteses na linha %d posicao %d\n", linha, pos);
		system("pause");

		erro = 1;
		return 0;
	}
	return 0;
}

int var_printf() {
	if (tk == TKId) {
		recebe_token();

		if (virgula() == 1) {
			recebe_token();
			var_printf();
		} else if (fecha_par() == 1) {
			return 1;
		} else {
			printf("ERRO: Esperava fechar parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");

			erro = 1;
			return 0;
		}
	} else {
		printf("ERRO: Esperava um identificador na linha %d posicao %d\n", linha, pos);
		system("pause");

		erro=1;
		return 0;
	}
	return 0;
}

int _printf() {
	if (tk == TKPrintf) {
		recebe_token();

		if (abre_par() == 1) {
			recebe_token();

			if (tk == TKAspaDupla) {
				recebe_token();

				while (tk != TKAspaDupla || tk == -1) {
					recebe_token();
				}

				if (tk == TKAspaDupla) {
					recebe_token();

					if (fecha_par() == 1) {
						return 1;
					} else if (virgula() == 1) {
						recebe_token();
						if (var_printf() == 1) {
							recebe_token();
							if (pto_vir() == 1) {
								return 1;
							} else {
								printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
								system("pause");
								erro=1;
								return 0;
							}
						}
					} else {
						printf("ERRO: Esperava fechar parenteses ou virgula na linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					}
				} else {
					printf("ERRO: Esperava aspa dupla na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				}
			} else {
				printf("ERRO: Esperava aspa dupla na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else {
			printf("ERRO: Esperava abrir parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int declara() {
	if (tk == TKId) {
		recebe_token();
		if (virgula() == 1) {
			recebe_token();
			declara();
		} else if (pto_vir() == 1) {
			return 1;
		} else if (abre_col() == 1) {
			recebe_token();
			if (tk == TKConstante || tk == TKId) {
				recebe_token();
				if (fecha_col() == 1) {
					recebe_token();
					if (pto_vir() == 1) {
						return 1;
					} else if (virgula() == 1) {
						recebe_token();
						declara();
					} else {
						printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					}
				} else {
					printf("ERRO: Esperava fechar colchete na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				}
			} else {
				printf("ERRO: Esperava um identificador ou constante na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else if (abre_par() == 1) {
			recebe_token();
			while(fecha_par() == 1) {
				recebe_token();
			}
			if (fecha_par() == 1) {
				return 1;
			}
		} else {
			printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	} else {
		printf("ERRO: Esperava um identificador na linha %d posicao %d\n", linha, pos);
		system("pause");
		erro=1;
		return 0;
	}
	return 0;
}

int declara_var() {
	if (tk  ==  TKInt || tk  ==  TKFloat || TKLong || TKDouble) {
		recebe_token();
		if (declara() == 1) {
			return 1;
		}
	}
	return 0;
}

int fre() {
	if (tk == TKFree) {
		recebe_token();
		if (abre_par() == 0) {
			printf("ERRO: Esperava um abre parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (idd()  ==  0) {
				printf("ERRO: Esperava identificador na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			} else {
				recebe_token();
				if (fecha_par() == 0) {
					printf("ERRO: Esperava um fecha parenteses na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				} else {
					recebe_token();
					if (pto_vir() == 0) {
						printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					} else {
						return 1;
					}
				}
			}
		}
	}else
		return 0;
}

int igual() {
	if (tk == TKAtribui)
		return 1;
	else
	 return 0;
}

int ini() {
	if (tk == TKId) {
		recebe_token();
		if (igual() == 0) {
			printf("ERRO: Esperava um igual na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (tk == TKId || tk == TKConstante) {
				recebe_token();
				if (virgula() == 1) {
					recebe_token();
					ini();
				} else {
					return 1;
				}
			} else {
				printf("ERRO: Esperava um identificador ou uma constante na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		}
	}
	return 0;
}

int lista_inc() {
	if (tk == TKSoma)
		return 1;
	else if (tk == TKMaisIgual)
		return 1;
	else if (tk == TKMenos)
		return 1;
	else if (tk == TKMenosIgual)
		return 1;
	else if (tk == TKMultiplica)
		return 1;
	else if (tk == TKVezesIgual)
		return 1;
	else if (tk == TKDivisao)
		return 1;
	else if (tk == TKDivideIgual)
		return 1;
	else if (tk == TKRestoDivisao)
		return 1;
	return 0;
}

int lista_operadores() {
	if (tk == TKSoma)
		return 1;
	else if (tk == TKMenos)
		return 1;
	else if (tk == TKMultiplica)
		return 1;
	else if (tk == TKDivisao)
		return 1;
	else if (tk == TKRestoDivisao)
		return 1;
	return 0;
}

int inc() {
	if (tk == TKId) {
		recebe_token();
		if (tk == TKDecremento || tk == TKIncremento) {
			recebe_token();
			if (virgula() == 1) {
				recebe_token();
				inc();
			} else {
				return 1;
			}
		} else if (lista_inc() == 0) {
			printf("ERRO: Esperava +, +=, -, -=, *, *=, /, /=, ou (por cento) na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (tk == TKId || tk == TKConstante) {
				recebe_token();
				if (virgula() == 1) {
					recebe_token();
					inc();
				} else {
					return 1;
				}
			} else {
				printf("ERRO: Esperava um identificador ou uma constante na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		}
	}
	return 0;
}

int dois_pontos() {
	if (tk == TKDoisPontos) {
		return 1;
	}
	return 0;
}


int lista_exp() {
	if (tk == TKDiferente)
		return 1;
	else if (tk == TKMaior)
		return 1;
	else if (tk == TKMaiorIgual)
		return 1;
	else if (tk == TKMenor)
		return 1;
	else if (tk == TKMenorIgual)
		return 1;
	else if (tk == TKComparacao)
		return 1;
	else if (tk == TKMaiorBinario)
		return 1;
	else if (tk == TKMenorBinario)
		return 1;
	return 0;
}

int logica() {
	if (tk == TKE)
		return 1;
	else if (tk == TKOu)
		return 1;
	return 0;
}

int expp() {
	if (tk == TKId) {
		recebe_token();
		if (lista_exp() == 0) {
			printf("ERRO: Esperava  == , !=, <, <=, <<, >, >=, ou >> na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (tk == TKId || tk == TKConstante) {
				recebe_token();
				if (logica() == 1) {
					recebe_token();
					expp();
				} else {
					return 1;
				}
			} else {
				printf("ERRO: Esperava um identificador ou uma constante na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		}
	}
	return 0;
}

int lista_atrib() {
	if (tk == TKAtribui)
		return 1;
	else if (tk == TKMaisIgual)
		return 1;
	else if (tk == TKMenosIgual)
		return 1;
	else if (tk == TKVezesIgual)
		return 1;
	else if (tk == TKDivideIgual)
		return 1;
	return 0;
}

int atrib2() {
	if (tk == TKId || tk == TKConstante) {
		recebe_token();
		if (lista_operadores() == 0) {
			if (pto_vir() == 0) {
				printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			} else {
				return 1;
			}
		} else {
			recebe_token();
			atrib2();
		}
	} else {
		printf("ERRO: Esperava identificador ou constante na linha %d posicao %d\n", linha, pos);
		system("pause");
		erro=1;
		return 0;
	}
	return 0;
}

int _identificador() {
	if (tk == TKId) {
		recebe_token();
		if (tk == TKIncremento || tk == TKDecremento) {
			recebe_token();
			if (pto_vir() == 0) {
				printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			} else {
				return 1;
			}
		} else if (tk == TKAtribui || lista_atrib() == 1) {
			recebe_token();
			if (atrib2() == 1) {
				return 1;
			}
		} else {
			printf("ERRO: Esperava =, +=, -=, *=, ou /= na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int atrib() {
	if (tk == TKId) {
		recebe_token();
		if (tk == TKIncremento || tk == TKDecremento) {
			recebe_token();
			if (pto_vir() == 0) {
				printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			} else {
				return 1;
			}
		} else {
			if (lista_atrib() == 0) {
				printf("ERRO: Esperava =, +=, -=, *=, ou /= na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			} else {
				recebe_token();
				if (atrib2() == 1) {
					return 1;
				}
			}
		}
	}


	return 0;
}

int ini_for() {
	if (pto_vir() == 0 && ini() == 0) {
		printf("ERRO: Esperava um ponto e virgula ou uma inicialização de variavel na linha %d posicao %d\n", linha, pos);
		system("pause");
		erro=1;
		return 0;
	} else if (pto_vir() == 1)
		return 1;
	return 0;
}

int exp_for() {
	if (pto_vir() == 0 && expp() == 0) {
		printf("ERRO: Esperava um ponto e virgula ou uma expressão de saida na linha %d posicao %d\n", linha, pos);
		system("pause");
		erro=1;
		return 0;
	} else if (pto_vir() == 1)
		return 1;
	return 0;
}

int inc_for() {
	if (inc() == 0 && fecha_par() == 0) {
		printf("ERRO: Esperava um fecha parenteses ou uma incrementação de variavel na linha %d posicao %d\n", linha, pos);
		system("pause");
		erro=1;
		return 0;
	} else if (fecha_par() == 1)
		return 1;
	return 0;
}

int _for() {
	if (tk == TKFor) {
		recebe_token();
		if (abre_par() == 0) {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (ini_for() == 1) {
				recebe_token();
				if (exp_for() == 1) {
					recebe_token();
					if (inc_for() == 1) {
						recebe_token();
						if (abre_chave() == 0) {
							return 1;
						} else {
							return 1;
						}
					}
				}
			}
		}

	}
	return 0;
}



int _do() {
	if (tk == TKDo) {
		recebe_token();
		if (abre_chave() == 1) {
			return 1;
		} else {
			return 1;
		}
	}
	return 0;
}

int exp_while() {
	if (expp() == 1 || tk == TKId || tk == TKConstante) {
		return 1;
	} else {
		printf("ERRO: Esperava uma condição de saida na linha %d posicao %d\n", linha, pos);
		system("pause");
		erro=1;
		return 0;
	}
	return 0;
}

int _while() {
	if (tk == TKWhile) {
		recebe_token();
		if (abre_par() == 0) {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (exp_while() == 1) {
				if (fecha_par() == 1) {
					recebe_token();
					if (pto_vir() == 1 || abre_chave() == 1 || tk == tk-1) {
						return 1;
					} else {
						printf("ERRO: Esperava ponto e virgula linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					}
				} else {
					printf("ERRO: Esperava fechar um parenteses na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				}
			}
		}
	}
	return 0;
}

int _if () {
	if (tk == TKIf) {
		recebe_token();

		if (abre_par() == 0) {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (expp() == 1) {
				if (fecha_par() == 0) {
					printf("ERRO: Esperava fechar um parenteses na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				} else {
					return 1;
				}
			}
		}
	}
	return 0;
}

int _break() {
	if (tk == TKBreak) {
		recebe_token();
		if (pto_vir() == 0) {
			printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
			system("pause");

			erro=1;
			return 0;
		} else {
			return 1;
		}
	}
	return 0;
}

int _else() {
	if (tk == TKElse) {
		recebe_token();
		if (_if() == 1) {
			return 1;
		} else if (tk == -1) {
			return 1;
		}
	}
	return 0;
}

int _switch() {
	if (tk == TKSwitch) {
		recebe_token();
		if (abre_par() == 0) {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		} else {
			recebe_token();
			if (tk == TKId) {
				recebe_token();
				if (fecha_par() == 0) {
					printf("ERRO: Esperava fechar um parenteses na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				} else {
					return 1;
				}
			} else {
				printf("ERRO: Esperava um identificador na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		}
	}
	return 0;
}

int _case() {
	if (tk == TKCase) {
		recebe_token();
		if (tk == TKConstante) {
			recebe_token();
			if (dois_pontos() == 0) {
				printf("ERRO: Esperava dois pontos na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			} else {
				return 1;
			}
		} else {
			printf("ERRO: Esperava uma constante na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int _void() {
	if (tk == TKVoid) {
		recebe_token();
		if (tk == TKId) {
			recebe_token();
			if (abre_par() == 1) {
				recebe_token();
				declara_func();
			} else {
				printf("ERRO: Esperava abrir parenteses na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else {
			printf("ERRO: Esperava MAIN ou identificador de funcao na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int _return() {
	if (tk == TKReturn) {
		recebe_token();
		if (tk == TKId || tk == TKConstante) {
			recebe_token();
			if (pto_vir() == 1) {
				return 1;
			} else {
				printf("ERRO: Esperava ponto e virgula na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else {
			printf("ERRO: Esperava uma constante ou um identificador na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int _gets() {
	if (tk == TKGets) {
		recebe_token();
		if (abre_par() == 1) {
			recebe_token();
			if (tk == TKId) {
				recebe_token();
				if (fecha_par() == 1) {
					recebe_token();
					if (pto_vir() == 1) {
						return 1;
					} else {
						printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					}
				} else {
					printf("ERRO: Esperava fechar parenteses na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				}
			} else {
				printf("ERRO: Esperava um identificador na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int _fflush() {
	if (tk == TKFflush) {
		recebe_token();
		if (abre_par() == 1) {
			recebe_token();
			if (tk == TKStdin) {
				recebe_token();
				if (fecha_par() == 1) {
					recebe_token();
					if (pto_vir() == 1) {
						return 1;
					} else {
						printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					}
				} else {
					printf("ERRO: Esperava fechar um parenteses na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				}
			} else {
				printf("ERRO: Esperava stdin na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int _setbuf() {
	if (tk == TKSetbuf) {
		recebe_token();
		if (abre_par() == 1) {
			recebe_token();
			if (tk == TKStdout) {
				recebe_token();
				if (virgula() == 1) {
					recebe_token();
					if (tk == TKNULL) {
						recebe_token();
						if (fecha_par() == 1) {
							recebe_token();
							if (pto_vir() == 1) {
								return 1;
							} else {
								printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
								system("pause");
								erro=1;
								return 0;
							}
						} else {
							printf("ERRO: Esperava fechar um parenteses na linha %d posicao %d\n", linha, pos);
							system("pause");
							erro=1;
							return 0;
						}
					} else {
						printf("ERRO: Esperava NULL na linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					}
				} else {
					printf("ERRO: Esperava uma virgula na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				}
			} else {
				printf("ERRO: Esperava stdout na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int _scanf() {
	if (tk == TKScanf) {
		recebe_token();
		if (abre_par() == 1) {
			recebe_token();
			if (tk == TKAspaDupla) {
				recebe_token();
				if (tk == TKRestoDivisao) {
					recebe_token();
					if (tk == TKId) {
						recebe_token();
						if (tk == TKAspaDupla) {
							recebe_token();
							if (virgula() == 1) {
								recebe_token();
								if (tk == TKEComers) {
									recebe_token();
									if (tk == TKId) {
										recebe_token();
										if (fecha_par() == 1) {
											recebe_token();
											if (pto_vir() == 1) {
												return 1;
											} else {
												printf("ERRO: Esperava um ponto e virgula na linha %d posicao %d\n", linha, pos);
												system("pause");
												erro=1;
												return 0;
											}
										} else {
											printf("ERRO: Esperava fechar um parenteses na linha %d posicao %d\n", linha, pos);
											system("pause");
											erro=1;
											return 0;
										}
									} else {
										printf("ERRO: Esperava um identificador na linha %d posicao %d\n", linha, pos);
										system("pause");
										erro=1;
										return 0;
									}
								} else {
									printf("ERRO: Esperava & na linha %d posicao %d\n", linha, pos);
									system("pause");
									erro=1;
									return 0;
								}
							} else {
								printf("ERRO: Esperava uma virgula na linha %d posicao %d\n", linha, pos);
								system("pause");
								erro=1;
								return 0;
							}
						} else {
							printf("ERRO: Esperava uma aspa dupla na linha %d posicao %d\n", linha, pos);
							system("pause");
							erro=1;
							return 0;
						}
					} else {
						printf("ERRO: Esperava um identificador na linha %d posicao %d\n", linha, pos);
						system("pause");
						erro=1;
						return 0;
					}
				} else {
					printf("ERRO: Esperava um (por cernto) na linha %d posicao %d\n", linha, pos);
					system("pause");
					erro=1;
					return 0;
				}
			} else {
				printf("ERRO: Esperava uma aspa dupla na linha %d posicao %d\n", linha, pos);
				system("pause");
				erro=1;
				return 0;
			}
		} else {
			printf("ERRO: Esperava abrir um parenteses na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int _default() {
	if (tk == TKDefault) {
		recebe_token();
		if (dois_pontos() == 1) {
			return 1;
		} else {
			printf("ERRO: Esperava dois pontos na linha %d posicao %d\n", linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
	}
	return 0;
}

int main() {
	setbuf(stdout, NULL);
	FILE *arquivoLeitura;

	do{
		//printf("Digite caminho completo do arquivo de leitura\n");
		//gets(local);
		//fflush(stdin);
		strcpy(local,"teste.txt");

		arquivoLeitura = fopen(local, "r+");

		if (arquivoLeitura  ==  NULL) {
			printf("Arquivo não encontrado\n");
		}
	} while(arquivoLeitura  ==  NULL);

	printf("Analise lexica em andamento..\n");

	check = ftell(arquivoLeitura);

	while(1) {
		fseek(arquivoLeitura, check, SEEK_SET);
		fgets(exp1, 200, arquivoLeitura);

		check = ftell(arquivoLeitura);
		tk = -3;

		while (tk  != -1 && tk  != -2) {
			tk = rec_equ(exp1);
			if (tk ==  -2) {
				printf("ERRO: Programa encontrou erro léxico linha %d na posicao %d\n", linha, pos);
				system("pause");
				erro=1;
			}
		}

		pos = 0;
		linha++;

		if (feof(arquivoLeitura))
			break;
	}

	printf("OK: Analise lexica concluida!\n");

	fclose(arquivoLeitura);

	arquivoLeitura = fopen(local, "r+");

	printf("Analise sintatica em andamento..\n");

	check = ftell(arquivoLeitura);
	linha = 1;

	while(1) {
		fseek(arquivoLeitura, check, SEEK_SET);
		fgets(exp1, 200, arquivoLeitura);

		check = ftell(arquivoLeitura);
		tk = -3;
		recebe_token();

		if (tk == TKAbreChave) {
			abre_chave();
			recebe_token();
		}
		if (tk == TKFechaChave) {
			fecha_chave();
			recebe_token();
		}
		if (tk == TKComparacao || tk == TKAtribui || tk == TKIncremento || tk == TKMaisIgual || tk == TKSoma || tk == TKDiferente || tk == TKPontoExclamacao || tk == TKAbrePar || tk == TKFechaPar || tk == TKVirgula || tk == TKPontoeVirg || tk == TKDoisPontos || tk == TKPonto || tk == TKAspaDupla || tk == TKAbreColchete || tk == TKE || tk == TKEComers || tk == TKOu || tk == TKTraco || tk == TKFechaColchete || tk == TKDecremento || tk == TKMenosIgual || tk == TKMenos || tk == TKVezesIgual || tk == TKMultiplica || tk == TKDivideIgual || tk == TKDivisao || tk == TKRestoDivisao || tk == TKAspaSimples || tk == TKMaiorIgual || tk == TKMaiorBinario || tk == TKMaior || tk == TKMenorIgual || tk == TKMenorBinario || tk == TKMenor) {
			printf("ERRO: Token %d nao permite inicar linha, linha %d posicao %d\n",tk, linha, pos);
			system("pause");
			erro=1;
			return 0;
		}
		if (tk ==  TKInt || tk ==  TKFloat || tk ==  TKLong || tk ==  TKDouble)
			declara_var();
		if (tk ==  TKFree)
			fre();
		if (tk == TKFor)
			_for();
		if (tk == TKDo)
			_do();
		if (tk == TKWhile)
			_while();
		if (tk == TKIf)
			_if();
		if (tk == TKElse)
			_else();
		if (tk == TKBreak)
			_break();
		if (tk == TKSwitch)
			_switch();
		if (tk == TKCase)
			_case();
		if (tk == TKVoid)
			_void();
		if (tk == TKReturn)
			_return();
		if (tk == TKGets)
			_gets();
		if (tk == TKId)
			_identificador();
		if (tk == TKFflush)
			_fflush();
		if (tk == TKSetbuf)
			_setbuf();
		if (tk == TKPrintf)
			_printf();
		if (tk == TKScanf)
			_scanf();
		if (tk == TKDefault)
			_default();

		pos = 0;
		linha++;

		if (feof(arquivoLeitura))
			break;
	}

	printf("OK: Analise sintatica concluida!\n");

	if (erro == 0)
		printf("Nenhum erro foi encontrado no programa!\n");

	fclose(arquivoLeitura);

	system("pause");
	return 0;
}
