#include <string.h>
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

#define TK_int 1
#define TK_float 2
#define TK_char 3
#define TK_struct 4
#define TK_if 5
#define TK_else 6
#define TK_while 7

#define TK_Abre_Colch 8
#define TK_Fecha_Colch 9
#define TK_Abre_Chaves 10
#define TK_Fecha_Chaves 11
#define TK_Fim_Arquivo 12
#define TK_Atrib 13
#define TK_Const_Int 14
#define TK_Mais 15
#define TK_Menos 16
#define TK_Mult 17
#define TK_Abre_Par 18
#define TK_Fecha_Par 19
#define TK_virgula 20
#define TK_pv 21
#define TK_Maior 22
#define TK_Menor 23
#define TK_Menor_Igual 24
#define TK_Maior_Igual 25
#define TK_Igual 26
#define TK_Diferente 27
#define TK_id 28


/***********************************************************************************/
/*                                                                                 */
/*  IN�CIO DO L�XICO - N�o entre a n�o ser que tenha interesse pessoal em l�xicos  */
/*                                                                                 */
/***********************************************************************************/

int linlex=0,collex=1;

char tokens[][20]={"","TK_int",
                      "TK_float",
					  "TK_char",
					  "TK_struct",
					  "TK_if",
					  "TK_else",
					  "TK_while",
					  "TK_Abre_Colch",
					  "TK_Fecha_Colch",
					  "TK_Abre_Chaves",
					  "TK_Fecha_Chaves",
					  "TK_Fim_Arquivo",
					  "TK_Atrib",
					  "TK_Const_Int",
					  "TK_Mais",
					  "TK_Menos",
					  "TK_Mult",
					  "TK_Abre_Par",
					  "TK_Fecha_Par",
					  "TK_virgula",
					  "TK_pv",
					  "TK_Maior",
					  "TK_Menor",
					  "TK_Menor_Igual",
					  "TK_Maior_Igual",
					  "TK_Igual",
					  "TK_Diferente",
					  "TK_id"
					  };

typedef struct pal{char palavra[20]; int token;} tpal;
tpal reservadas[]={{"",0},
				   {"int",TK_int},
				   {"float",TK_float},
				   {"char",TK_char},
				   {"struct",TK_struct},
				   {"if",TK_if},
				   {"else",TK_else},
				   {"while",TK_while},
				   {"fim",-1}};

FILE *arqin;
int token;
char lex[20];

char le_char()
{
char c;

if (fread(&c,1,1,arqin)==0) return -1;
if (c=='\n') {linlex++;collex=1;}
else collex++;
return c;
};

int pal_res(char lex[])
{
int tk=0;
while (strcmp(reservadas[tk].palavra,"fim")!=0)
   {
   	if (strcmp(lex,reservadas[tk].palavra)==0) return reservadas[tk].token;
	tk++;
   }
return TK_id;
}

int le_token()
{
static int pos=0;
static int estado=0;
static char c='\0';
while(1)
{
switch (estado)
{
case 0:if (c==',') {c=le_char();return TK_virgula;}
       if (c=='+') {c=le_char();return TK_Mais;}
       if (c=='-') {c=le_char();return TK_Menos;}
       if (c=='*') {c=le_char();return TK_Mult;}
       if (c=='{') {c=le_char();return TK_Abre_Chaves;}
       if (c=='}') {c=le_char();return TK_Fecha_Chaves;}
       if (c==';') {c=le_char();return TK_pv;}
       if (c=='[') {c=le_char();return TK_Abre_Colch;}
       if (c==']') {c=le_char();return TK_Fecha_Colch;}
       if (c=='(') {c=le_char();return TK_Abre_Par;}
       if (c==')') {c=le_char();return TK_Fecha_Par;}
       if (c=='=')
	      {
		  c=le_char();
		  if (c=='=')
		     {
             c=le_char();
		     return TK_Igual;
			 }
		  return TK_Atrib;
		  }
       if (c=='<')
	      {
		  c=le_char();
		  if (c=='=')
		     {
             c=le_char();
		     return TK_Menor_Igual;
			 }
		  return TK_Menor;
		  }
       if (c=='>')
	      {
		  c=le_char();
		  if (c=='=')
		     {
             c=le_char();
		     return TK_Maior_Igual;
			 }
		  return TK_Maior;
		  }
       if (c=='!')
	      {
		  c=le_char();
		  if (c=='=')
		     {
             c=le_char();
		     return TK_Diferente;
			 }
		  }
       if (c>='a' && c<='z' || c=='_')
          {
          lex[0]=c;
          c=le_char();
		  pos=1;
		  estado=1;
		  break;
		  }
       if (c>='0' && c<='9')
          {
          lex[0]=c;
          c=le_char();
		  pos=1;
		  estado=2;
		  break;
		  }
	   if (c==-1) return TK_Fim_Arquivo;
	   if (c=='\n'||c=='\r'||c=='\t'||c=='\0'||c==' '){c=le_char();break;}
case 1:if (c>='a' && c<='z' || c=='_' || c>='0' && c<='9')
          {
          lex[pos++]=c;
          c=le_char();
		  break;
		  }
	   else
	      {
		  estado=0;
		  lex[pos]='\0';
		  return pal_res(lex);
		  }
case 2:if (c>='0' && c<='9')
          {
          lex[pos++]=c;
          c=le_char();
		  break;
		  }
	   else
	      {
		  estado=0;
		  lex[pos]='\0';
		  return TK_Const_Int;
		  }
}
}
}

/********************/
/*                  */
/*  FIM DO L�XICO   */
/*                  */
/********************/

#define MAX_COD 1000

void mostra_t()
{
printf("%s lex=%s na lin %d, col %d\n",tokens[token],lex,linlex,collex);
}

/****************/
/*              */
/*  EXPRESS�ES  */
/*              */
/****************/

int T(char T_c[MAX_COD]);
int E(char E_c[MAX_COD]);
int R(char R_h[MAX_COD],char R_s[MAX_COD]);
int F(char F_c[MAX_COD]);
int S(char S_h[MAX_COD],char S_s[MAX_COD]);

int Rel(char Rel_c[MAX_COD])
{
printf("Entrei no Rel\n");
char E1_c[MAX_COD],E2_c[MAX_COD],R_s[MAX_COD];
if (E(E1_c))
   {
   char op[10];
   if (token==TK_Maior) strcpy(op,">");
   else if (token==TK_Menor) strcpy(op,"<");
   else if (token==TK_Igual) strcpy(op,"=");
   else if (token==TK_Diferente) strcpy(op,"<>");
   else if (token==TK_Maior_Igual) strcpy(op,">=");
   else if (token==TK_Menor_Igual) strcpy(op,"<=");
   printf("Voltei do E, token � %s op � %s",tokens[token],op);
   if (token==TK_Maior||token==TK_Menor||token==TK_Igual||token==TK_Diferente||token==TK_Maior_Igual||token==TK_Menor_Igual)
      {
      token=le_token();
      if (E(E2_c))
         {
         printf("Voltei do E2, token � %s",tokens[token]);
         sprintf(Rel_c,"%s%s\t%s\n",E1_c,E2_c,op);
         return 1;
		 }
		 return 0;
	  }
   else
      {
	  strcpy(Rel_c,E1_c);
      printf("Vou retornar 1 no E\n");
      return 1;
	  }
   }
return 0;
}

int E(char E_c[MAX_COD])
{
printf("Entrei no E\n");
char T_c[MAX_COD],R_h[MAX_COD],R_s[MAX_COD];
if (T(T_c))
   {
   strcpy(R_h,T_c);
   if (R(R_h,R_s))
      {
      strcpy(E_c,R_s);
      printf("Vou retornar 1 no E\n");
      return 1;
	  }
   }
return 0;
}

int R(char R_h[MAX_COD],char R_s[MAX_COD])
{
printf("Entrei no R (+TR | -TR)\n");
char T_c[MAX_COD],R1_h[MAX_COD],R1_s[MAX_COD];
if (token==TK_Mais)
   {
   token=le_token();
   if (T(T_c))
      {
      strcpy(R1_h,R_h);
      strcat(R1_h,T_c);
      strcat(R1_h,"\t+\n");
      if (R(R1_h,R1_s))
         {
         strcpy(R_s,R1_s);
         return 1;
	     }
      }
   return 0;
   }
if (token==TK_Menos)
   {
   token=le_token();
   if (T(T_c))
      {
      strcpy(R1_h,R_h);
      strcat(R1_h,T_c);
      strcat(R1_h,"\t-\n");
      if (R(R1_h,R1_s))
         {
         strcpy(R_s,R1_s);
         return 1;
	     }
      }
   return 0;
   }
strcpy(R_s,R_h);
printf("Vou retornar 1 no R\n");
return 1;
}

int T(char T_c[MAX_COD])
{
char F_c[MAX_COD],S_h[MAX_COD],S_s[MAX_COD];
printf("Entrei no T\n");
if (F(F_c))
   {
   strcpy(S_h,F_c);
   if (S(S_h,S_s))
      {
      strcpy(T_c,S_s);
      return 1;
	  }
   }
return 0;
}

int S(char S_h[MAX_COD],char S_s[MAX_COD])
{
printf("Entrei no S (*FS)\n");
char F_c[MAX_COD],S1_h[MAX_COD],S1_s[MAX_COD];
if (token==TK_Mult)
   {
   token=le_token();
   if (F(F_c))
      {
      strcpy(S1_h,S_h);
      strcat(S1_h,F_c);
      strcat(S1_h,"\t*\n");
      if (S(S1_h,S1_s))
         {
         strcpy(S_s,S1_s);
         return 1;
	     }
      }
   return 0;
   }
strcpy(S_s,S_h);
printf("Vou retornar 1 no S\n");
return 1;
}

int F(char F_c[MAX_COD])
{
printf("Entrei no F\n");

if (token==TK_Const_Int)
   {
   strcpy(F_c,"\tpush ");
   strcat(F_c,lex);
   strcat(F_c,"\n");
   token=le_token();
   return 1;
   }
if (token==TK_id)
   {
   strcpy(F_c,"\tvalor-r ");
   strcat(F_c,lex);
   strcat(F_c,"\n");
   token=le_token();
   return 1;
   }
if (token==TK_Abre_Par)
   {
   char E_c[MAX_COD];
   token=le_token();
   if (E(E_c))
      if (token==TK_Fecha_Par)
         {
         token=le_token();
         strcpy(F_c,E_c);
         return 1;
		 }
   }

return 0;
}

/**************/
/*            */
/*  COMANDOS  */
/*            */
/**************/

int Com(char Com_c[MAX_COD]);
int Lista_Com(char Lista_Com_c[MAX_COD]);

/* Lista_Com ->

*/

int Lista_Com(char Lista_Com_c[MAX_COD])
{
printf("Entrei no Lista_Com\n");

char LL_c[MAX_COD];
	char Com_c[MAX_COD];
	printf("Vou testar Com - token � %s\n",tokens[token]);
	if (token==TK_Fim_Arquivo) return 1;
    if (token!=TK_id && token!=TK_pv && token!=TK_if && token!=TK_while)
       {
       	strcpy(Lista_Com_c,"");
       	return 1;
	   }

	if (Com(Com_c))
	   {
       printf("B - token � %s\n",tokens[token]);
	      if (Lista_Com(LL_c))
		     {
		     strcpy(Lista_Com_c,Com_c);
		     strcat(Lista_Com_c,LL_c);
	         printf("Vou retornar 1 no Lista_Com. Token � %s\n",tokens[token]);
	   	     return 1;
			 }
		  printf("Vou retornar 0 no Lista_Com-1 - token � %s\n",tokens[token]);
	      return 0;
	   }
	if (token==TK_Fim_Arquivo) return 1;
	printf("Vou retornar 0 no Lista_Com-2\n");
	return 0;
}

void geralabel(char label[])
{
static int numlabel=0;
sprintf(label,"LB%03d",numlabel++);
}

int Com(char Com_c[MAX_COD])
{
printf("Entrei no Com\n");
char Rel_c[MAX_COD];
if (token==TK_if)
   {
   char labelelse[10],labelfim[10];
   geralabel(labelelse);
   geralabel(labelfim);
   token=le_token();
   if (token==TK_Abre_Par)
      {
      token=le_token();
      if (Rel(Rel_c))
	     if (token==TK_Fecha_Par)
	        {
            token=le_token();
	        char Com3_c[MAX_COD];
      		if (Com(Com3_c))
	           {
	           	if (token==TK_else)
					{
					token=le_token();
					char Com2_c[MAX_COD];
      				if (Com(Com2_c))
      				   {
      				   sprintf(Com_c,"%s\tgofalse %s\n%s\tgoto %s\nrotulo %s\n%srotulo %s",
						       Rel_c,labelelse,Com3_c,labelfim,labelelse,Com2_c,labelfim);
      				   return 1;
					   }
					else
					   {
					   printf("Erro no comando do else\n");
					   return 0;
					   }
					}
				else
				    {
					   printf("Esperava palavra else\n");
					   return 0;
				    }
			   }
            	else
				  {
	              printf("Esperava fecha par�nteses\n");
				  return 0;
                  }
			}
			else
			   {
			   printf("Erro na express�o do if \n");
               return 0;
		       }
		{
	    printf("Esperava abre par�nteses\n");
		return 0;
		}
	  }
else
   {
   printf("Esperava abre par�nteses\n");
   return 0;
   }
}
if (token==TK_while)
   {
   char labelinicio[10],labelfim[10];
   geralabel(labelinicio);
   geralabel(labelfim);
   token=le_token();
   if (token==TK_Abre_Par)
      {
      token=le_token();
      if (Rel(Rel_c))
	     if (token==TK_Fecha_Par)
	        {
            token=le_token();
            char Com1_c[MAX_COD];
	        if (Com(Com1_c))
      				   {
      				   sprintf(Com_c,"rotulo %s\n%s\tgofalse %s\n%s\tgoto %s\nrotulo %s\n",
						 labelinicio,Rel_c,labelfim,Com1_c,labelinicio,labelfim);
      				   return 1;
					   }

            	else
				  {
	              printf("Esperava fecha par�nteses\n");
				  return 0;
                  }
			}
			else
			   {
			   printf("Erro na condi��o do while\n");
               return 0;
		       }
		{
	    printf("Esperava abre par�nteses\n");
		return 0;
		}
	  }
else
   {
   printf("Esperava abre par�nteses\n");
   return 0;
   }
}
else if (token==TK_id)
   {
   char id[10];
   strcpy(id,lex);
   token=le_token();
	if (token==TK_Atrib)
	   {
        token=le_token();
        char E_c[MAX_COD];
	   	if (Rel(E_c))
	   	   {
	   	   if (token==TK_pv)
	           {
               token=le_token();
               strcpy(Com_c,"\tvalor-l ");
		       strcat(Com_c,id);
		       strcat(Com_c,"\n");
		       strcat(Com_c,E_c);
		       strcat(Com_c,"\t:=\n\tpop\n");
		       printf("Vou retornar 1 no Com\n");
		       return 1;
		       }
		    else
		       {
		       	printf("Faltou ponto-e-v�rgula ap�s atribui��o\n");
		       	return 0;
			   }
		   }
	   }
   }
else if (token==TK_Abre_Chaves)
        {
        char Lista_Com_c[MAX_COD];
		token=le_token();
        printf("Consumi o abre chaves\n");
	    if (Lista_Com(Lista_Com_c))
           {
           printf("Voltei do Lista_Com. Token=%s\n",tokens[token]);
	       if (token==TK_Fecha_Chaves)
	          {
	          token=le_token();
              printf("Consumi o fecha chaves\n");
	          strcpy(Com_c,Lista_Com_c);
			  return 1;
			  }
			else
			{
		printf("Esperava fecha chaves na linha %d",linlex);
           return 0;
       }
		   }
		}
else   	   if (token==TK_pv)
	           {
		       printf("Vou retornar 1 no Com com ponto e virgula\n");
               token=le_token();
    return 1; }
   else {
		       printf("Vou retornar 0 no Com vazio - token � %s\n",tokens[token]);

   return 1;
   }
}
int main()
{
FILE *arqout;
char Com_C[MAX_COD];
if ((arqin=fopen("c:\\teste\\prog.cpp","rt"))==NULL){printf("Erro na abertura do arquivo");exit(0);}
if ((arqout=fopen("c:\\teste\\saida.kvmp","wt"))==NULL){printf("Erro na abertura do arquivo de saida");exit(0);}
token=le_token();
while (token!=TK_Fim_Arquivo)
   {
   if (Lista_Com(Com_C)==0)
      printf("Erro no comando!!!\n");
   else
      {
	  fprintf(arqout,"%s",Com_C);
	  printf("%s",Com_C);
      }
   getch();
   }
fclose(arqin);
fclose(arqout);
system("pause");
}
