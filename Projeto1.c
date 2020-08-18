/*
 ============================================================================
 Name        : Projeto1.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//extern int SOMA(int aa, int bb);
//extern int SOMA_V(int *a, int b);
//extern int F2EX1A(int a);
//extern int F2EX1B(int a, int b);
//extern int F2EX1C(signed int a);

//extern int F3EX3B(char *a, char b);
//extern int fourxintab(int *vec, int tamv, int a, int b);
//extern int F3EX7D(int* v1dimF3EX7D, int* v2dimF3EX7D, int dimF3EX7D);
//extern int F3EX7E(int* v1dimF3EX7E, int* v2dimF3EX7E, int dimF3EX7E);
//extern int CheckRange( int lim, int tam, int *seq);
//extern int experiencias(int lim, int tam, int* seq);
//extern unsigned int CountCommon(unsigned int N, int *seq_A , unsigned int M, int *seq_B);
//extern long int F4EX3(long int x);
//extern char* F4EX4A(char* frase);
//extern int Calculator (unsigned int N, char *seq_OP, int *seq_B, int *seq_A);
//extern double F5EX1A(double B, double M, double N);
//extern double F5EX1B(double X, int W);
//extern float F5EX2A(float a, float b, float c, float d);
//extern double F5EX2B(double r);
//extern double F5EX5(float *x, float *y, int n);
//extern long int conta_intervalo(float *V, long int n, float a, float b);
//extern double cosseno(double x);
//extern void eStep(unsigned int N, float *seq_P , unsigned int M, double *seq_C, unsigned int *seq_Out);
//extern void eStep(unsigned int N, float *seq_P , unsigned int M, double *seq_C, double *seq_Out);
//extern double experiencias(unsigned int N, float *seq_P , unsigned int M, double *seq_C, double *seq_Out);
//extern void F6EX1A(float *P, float *Q, float *R, int n);
//extern void F6EX1B(float *P, int n, float k);
//extern long int F6EX2(int *R, int *S, int n);
//extern long int F6EX3(char *V, long int n, char val);
//extern void F6EX4(int *Z, int n, int x);
//extern double F6EX6(double *ptV, long int n);
//extern void F6EX9(float *Z1, float *Z2, float *Z, long int n);
//extern char freqchars(unsigned int N, char *text, char nl, char *lett, float *freq);
//extern void questionario2(float *P, float *Q);


// Questões-tipo Exame:
//extern long int menorX(long int *P, int n);
//extern long int maiorY(long int *P, int n);
//extern int PONTO(long int *P, int n);
//extern unsigned int words(unsigned char *txt, unsigned int n);
//extern double Func(double x);
//extern float pesoideal(float peso, float altura, char genero);
//extern float Dmax(float x, float y, float *ptK, int n);
//extern char rot13(char letra);
//extern void cypher(unsigned char *clt);



int main(void)
{
	printf("**********************************************************************************\n\n");
	//Programa inicial - de instalação

	/*int a = 5;
	int b = 10;
	int ca = 0;
	ca = SOMA(a, b);
	printf("A soma é %d\n", ca);*/

/***********************************************************************************************************************************************************************************************************************/
	//Ficha2_Ex_1.a)
/*
	int a = 23;
	int res = F2EX1A(a);
	printf("Decrementar de uma unidade o valor da posição de memória endereçada por X10, com valor inicial %d - %d", a, res);
*/
/***********************************************************************************************************************************************************************************************************************/
	//Ficha2_Ex_1.b)
/*
	int a = 23; int b = 2;
	int res = F2EX1B(a, b);
	printf("Colocar no registo X9(%d) o maior dos valores dos registos X10(%d) e X11(%d)", res, a, b);
*/
/***********************************************************************************************************************************************************************************************************************/
	//Ficha2_Ex_1.c)
/*
	//signed int a = 23;
	signed int a = -3;
	int res = F2EX1C(a);
	printf("Substituir o conteúdo de X15(%d) pelo seu valor absoluto -> %d", a, res);
*/
/***********************************************************************************************************************************************************************************************************************/
	//Ficha3_Ex_1.a)

	/*int a[5]={1,1,1,1,1};
	int b=5;
	int res=10;
	res=SOMA_V(a,b);
	printf("A soma é: %d",res);*/

/***********************************************************************************************************************************************************************************************************************/
	//Ficha3_Ex_2

	/*char frase[]="te";
	char caracter='t';
	//printf("teste\n");
	int resex3b;
	resex3b=f3ex3b(frase,caracter);
	printf("há %d caracacteres", resex3b);*/

/***********************************************************************************************************************************************************************************************************************/
	//Ficha3_Ex_4.b)

	/*int dim=5;
	int v[]={-3,1,40,0,2};
	long int v1[]={0,0,0,0,0};
	f3ex4b(v,v1,dim);
	printf("\n");
	for(int j=0;j<dim;j++)
	{
		printf("%d",v1[j]);
	}
	printf("\n");*/

/***********************************************************************************************************************************************************************************************************************/
	//Ficha3_Ex_5.a)

	/*long int testn = 1024;
	int res6;
	res6 = POSlmsb(testn);
	printf ("A posição do primeiro 1 é %d\n", );
*/
/***********************************************************************************************************************************************************************************************************************/
/*	Trabalho 0

	Determinar o número de valores (X) de uma sequência (vetor) de N elementos (N>=0)
	em que 4 * X pertence ao intervalo [a; b]. Considerar que os valores são do tipo unsigned word.
	EX: Assumindo V= [ 40, 5, 3, 12, 13, 21] e [a; b]=[13 84] a resposta é 4.
	Podem usar o seguinte código C para invocar e testar a vossa função:*/

   /* int vecint[]= {40, 5, 3, 12, 13, 21};
    int tamvec = 6;
    int inflim2 = 13;
    int suplim2 = 84;
    int fourxintabresult = fourxintab(vecint, tamvec, inflim2, suplim2);
    printf("fourxintabresult = %d\n",fourxintabresult);
	         // para este exemplo fourxintabresult = 4
*/
/***********************************************************************************************************************************************************************************************************************/
	//Ex.7-d
	/*
	int dimF3EX7D = 5;
	//int v1dimF3EX7D[] = {3, -1, 40, 0, -3};
	//int v2dimF3EX7D[] = {3, -1, 4, 0, 1};
	int v1dimF3EX7D[] = {-3, -1, -4, 0, -3};
	int v2dimF3EX7D[] = {3, 1, 4, 0, 1};
	int resF3EX7D;
	resF3EX7D = F3EX7D (v1dimF3EX7D, v2dimF3EX7D, dimF3EX7D);
	printf ("O produto interno é = %d\n", resF3EX7D);
*/
/***********************************************************************************************************************************************************************************************************************/
	//Ex.7-e

	/*	int dimF3EX7E = 5;
		//int v1dimF3EX7E[] = {3, -1, 40, 0, -3};
		//int v2dimF3EX7E[] = {3, -1, 4, 0, 1};
		//int v1dimF3EX7E[] = {-3, -1, -4, 0, -3};
		//int v2dimF3EX7E[] = {3, 1, 4, 0, 1};
		//int v1dimF3EX7E[] = {4581, 3, 45, 511, 5};
		//int v2dimF3EX7E[] = {1527, 15, 56, -5486, 15651};
		//int v1dimF3EX7E[] = {-4581, -3, -45, 511, -5};
		//int v2dimF3EX7E[] = {1527, 15, 56, 5486, 15651};
		int v1dimF3EX7E[] = {4581, 3546, 45548, 785511, 5};
		int v2dimF3EX7E[] = {1527, -15, 56654, 5486, 1};
		int resF3EX7E;
		resF3EX7E = F3EX7E (v1dimF3EX7E, v2dimF3EX7E, dimF3EX7E);
		printf ("O produto interno é = %d\n", resF3EX7E);

*/

/***********************************************************************************************************************************************************************************************************************/
	/*	Trabalho 1

		Escrever uma sub-rotina que, para um dado valor positivo (o limiar),
		substitui os elementos de uma sequência que não pertencem ao intervalo
		[-limiar;+limiar] pelo valor do extremo do intervalo mais próximo desses
		elementos e devolve o número de elementos modificados. Os elementos da
		sequência são do tipo signed word.

		A sub-rotina deve ter o nome CheckRange e aceitar os seguintes argumentos pela ordem indicada:
		(1) valor limiar (do tipo unsigned word);
		(2) número de elementos da sequência (do tipo unsigned word);
		(3) endereço-base da sequência.

		Para efeitos de teste podem utilizar o seguinte código:
*/
	/*	int limiar = 20;
		//int limiar = 0;
		int tamanho = 8;
		//int tamanho = 6;
		//int tamanho = 0;
		int ve[] = {7, -8, -23, 56, 20, -10, 0, 40};
		//int ve[] = {7, -8, -20, 16, 20, -10, 0, 4};
		//int ve[] = {70, -80, -23, 56, 200, -100, 120, 40};
		//int ve[] = {20, -20, -20, 20, 20, -20, 20, 20};
		//int ve[] = {-8, -23, 56, 20, -10, 40};
		//int ve[] = {};
		int res;
		res = CheckRange(limiar, tamanho, ve);
		printf("Foram modificados %d elementos da sequencia ve[]", res);
		printf("\nNovo vector :");
			for(int i = 0; i < tamanho; i++)
			{
				printf("%d; ", ve[i]);
			}
		// para o exemplo fornecido o output deve indicar que foram alterados 3 elementos
		// no final da execuçao a sequencia ve[] = {7, -8, -20, 20, 20, -10, 0, 20}
		//(podem verificar o seu conteúdo durante a execução em modo debug)
*/

/***********************************************************************************************************************************************************************************************************************/
			// Trabalho 2

	// Escrever uma sub-rotina que aceita  duas sequências seq_A e seq_B de N e M números
	// inteiros (M, N >= 0), respetivamente. Os elementos da sequência seq_B são todos
	// distintos. Os elementos das sequências são do tipo signed word. A sub-rotina
	// determina quantos elementos de seq_A surgem em seq_B.
	//O resultado é do tipo unsigned word.

	//A sub-rotina deve ter o nome CountCommon e aceitar os seguintes argumentos pela ordem indicada:
	//(1) valor de N (do tipo unsigned word);
	//(2) endereço-base de seq_A;
	//(2) valor de M (do tipo unsigned word);
	//(3) endereço-base da sequência seq_B.
/*
	unsigned int tamA= 8, tamB=3;
	//unsigned int tamA = 8, tamB = 5;
	//unsigned int tamA = 12, tamB = 3;
	int vectA[] = {7, -8, -5, -2, -5, -2, 40, 7};
	//int vectA[] = { 5, -8, -5, -2, -5, -2, 40, 5};
	//int vectA[] = {5, 7, -2};
	//int vectA[] = {287, -34, -4, -6, 2, 2, 2, 2, 2, 2, -2, 4};
	//int vectA[] = {};
	int vectB[] = {5, 7, -2};
	//int vectB[] = {7, -8, -5, -2, 40};
	//int vectB[] = {};
	//int vectB[] = {1, 2, 3};
	//int vectB[] = {5, 5, 6, 7};
	//int vectB[] = {7, -8, -5, -2, -5, -2, 40, 7};
	//int vectB[] = {287, -2, 2};

	unsigned int res;

	res = CountCommon(tamA, vectA, tamB, vectB);
	printf("Número de elementos de vectA[] em vectB[]: %u", res);
*/
	// para o exemplo fornecido, o número de elementos indicado na mensagem é 4.

/***********************************************************************************************************************************************************************************************************************/
		// Ficha 4 - Ex.3

/*
	long int r;
	r = F4EX3(7);
	printf("Resultado = %d\n", r);
*/

/***********************************************************************************************************************************************************************************************************************/

			// Ficha 4 - Ex. 4 - a)
/*
	char* palavra = "Boas";
	char* res;
	res = F4EX4A(palavra);
	printf("Nova palavra: ", res);
	printf("\nNovo vector :");
	for(int i = 0; i < tamanho; i++)
 	{
		printf("%d; ", palavra[i]);
	}*/

/***********************************************************************************************************************************************************************************************************************/
		// Trabalho3

	/*Pretende-se implementar uma sub-rotina que aceita três sequências,
	 seq_A, seq_B e seq_OP, com igual número (N) de elementos. As sequências
	 seq_A e seq_B são compostas por N elementos inteiros enquanto que
	 seq_OP é um vetor de carateres que define operações. Para cada elemento
	 i (0 <= i < N) das sequências, seq_OP[i] define a operação a realizar
	 entre seq_A[i] e seq_B[i]. As operações a realizar são a adição ('+'),
	 subtração ('-'), multiplicação ('*') e potência AB ('P'), com deteção
	 de overflow. Para a operação de potência, assumir que o valor de B é
	 maior ou igual a 0. Enquanto não ocorrer overflow, o resultado de cada
	 operação deve ser armazenado na posição correspondentes de seq_A. Caso
	 ocorra overflow, a sub-rotina deve terminar sem processar mais operações
	 e retornar o número de ordem (entre 1 e N) da operação em que ocorre
	 overflow. A sub-rotina deve devolver o valor inteiro 0 no caso de ter
	 realizado todas as operações sem ocorrência de overflow.

	Notas importantes:
	.As operações de adição, subtração e multiplicação devem ser feitas nesta sub-rotina.
	.Para realizar a operação de potência deve invocar, com os devidos cuidados relativos
	ao uso de registos, a sub-rotina a seguir declarada:
	.extern int power(int base, int exp)
	.Esta sub-rotina calcula o valor da potência e verifica a ocorrência de overflow.
	Caso ocorra overflow a sub-rotina retorna o valor 0; caso não ocorra overflow
	devolve o valor da potência (é sempre diferente de 0).

	A sub-rotina a implementar deve ter o nome Calculator e aceitar os seguintes
	argumentos pela ordem indicada:
	(1) unsigned int N;
	(2) endereço base de seq_OP;
	(3) endereço base de seq_B;
	(4) endereço base de seq_A.

	Para efeitos de teste, podem utilizar o seguinte código:
	*/

	/*unsigned int size =6;
	int vectA[] = {13, 2, 8, 4, 5, 25};
	//int vectB[] = {9, 2, 3, 0, 1, -25}; // com overflow : exemplo (a)
	int vectB[] = {1, 2, 3, 0, 1, -25}; // sem overflow  : exemplo (b);
	char vectOP[] = {'P', '+', 'P', '*', '-', '+'};

	int execucao = Calculator(size, vectOP, vectB, vectA);
	int i;
	if (execucao){
	    printf("Overflow na operação %d\n", execucao);
	    for (i = 1; i < execucao; i++)
	        printf("elemento %d resultado = %d\n", i, vectA[i-1]);}
	else
	    for (i = 1; i <= size; i++)
	        printf("elemento %d resultado = %d\n", i , vectA[i-1]);
	 return EXIT_SUCCESS;
*/
	/*Exemplos:
	(a) Para vectB[] = {9, 2, 3, 0, 1, -25} e vectA[] = {13, 2, 8, 4, 5, 25}, tem-se execucao = 1;
	// Ocorreu overflow na 1ª operação - nenhum valor de vectA[] é alterado.

	(b) Para vectB[] = {1, 2, 3, 0, 1, -25} e vectA[] = {13, 2, 8, 4, 5, 25}, deve-se obter execucao = 0;
	// Não ocorre overflow; executa todas as operações. No final, vectA[] = {13, 4, 512, 0, 4, 0}.

	Obs:
	Para efeitos de teste, precisam de desenvolver uma sub-rotina para cálculo da potência, em conformidade com a especificação dada anteriormente. No entanto, esta sub-rotina não deverá ser submetida.
	A única sub-rotina a submeter (Calculator) deve ser colocada num ficheiro designado "calculator_upXXXXXXXXX_1MIEIC0x.s", em que "XXXXXXXXX" é o código do estudante e "x" é o número da turma.
	*/

/***********************************************************************************************************************************************************************************************************************/
			//Ficha 5 - Ex. 1 - a)
	// calcular P = -M * (N+B);
	/*
	double B = 7.8;
	double M = 3.6;
	double N = 7.1;
	double P = F5EX1A(B, M, N);
	if (P >= 0)
		printf("O resultado é pos -  %g\n", solution);
	else
		printf("O resultado é neg -  %g\n", solution);
	//printf("O resultado é %g\n", P);
*/
/***********************************************************************************************************************************************************************************************************************/
			//Ficha 5 - Ex. 1 - b)
	// calcular Y = sqrt(X) + W;
/*
	int W = 7;
	double X = 7.1;
	double Y = F5EX1B(X, W);
	if (Y >= 0)
		printf("O resultado é pos -  %g\n", solution);
	else
		printf("O resultado é neg -  %g\n", solution);
	//printf("O resultado é %g\n", Y);
*/

/***********************************************************************************************************************************************************************************************************************/
			//Ficha 5 - Ex. 2 - a)
	// Escrever um programa para calcular o valor da expressão
	// ((A-B)*C)/(D+A-3), assumindo valores com precisão simples.
/*	float a = 10.0;
	//float a = -10.0;
	float b = 5.0;
	float c = -0.5;
	//float c = 0.5;
	float d = 3.0;
	float solution = F5EX2A(a, b, c, d);
	if (solution >= 0)
		printf("O resultado é pos -  %g\n", solution);
	else
		printf("O resultado é neg -  %g\n", solution);
	//printf("O resultado é %f\n", solution);
*/
/***********************************************************************************************************************************************************************************************************************/
			//Ficha 5 - Ex. 2 - b)
	// Escrever um programa para calcular o valor da área de um
	// círculo dado o respetivo raio (considerar pi = 3,141 592 653).
	//double r = 10.0;
/*	double r = -10.0;
	//double r = 5.0;
	double solution = F5EX2B(r);
	if (solution >= 0)
		printf("O resultado é pos -  %g\n", solution);
	else
		printf("O resultado é neg -  %g\n", solution);
*/
/***********************************************************************************************************************************************************************************************************************/
			//Ficha 5 - Ex. 5
	// Sejam X e Y dois vetores de n números reais (n > 0). O seu
	// produto interno é dado por:
	// X . Y = x1*y1 + x2*y2 + ... + xn*yn
	// Apresentar o código da sub-rotina que calcula o produto interno
	// de X e Y.
/*
	float x[] = {-1.0, 2.1, 2.0};
	float y[] = {1.1, 1.2, -1.1};
	int n = 3;
	double solution = F5EX5(x, y, n);
	if (solution >= 0)
		printf("O resultado é pos -  %g\n", solution);
	else
		printf("O resultado é neg -  %g\n", solution);
	//printf("O resultado é %g\n", solution);
*/
/***********************************************************************************************************************************************************************************************************************/
			//Ficha 5 - Ex 6
	/*Considerar um vetor V com n valores do tipo float. Escrever uma
	sub-rotina que determina o número de valores do vetor que pertencem
	ao intervalo [a; b]. Assumir que para executar esta subrotina é
	chamada a função em C com o seguinte protótipo:*/

	//FAZER CÓDIGO PARA TESTAR

/***********************************************************************************************************************************************************************************************************************/
			//Ficha 5 - Ex 9. a)

	/*	Pretende-se implementar um programa que produza uma tabela de
	 valores da função y = 100 + 50 cos(x) com x pertencente a [0; 90]
	 (x em graus). Para isso, procede-se da seguinte maneira:

	a) Escrever a sub-rotina cosseno que calcula o cosseno de um valor
	real expresso em radianos (assumir a declaração
	double cosseno(double x)), usando a seguinte variante da fórmula
	de Taylor
	Sugestão: Declarar um vetor com as constantes (n!) pré-calculadas.
*/
	/*
	double x = 0;				//0º   - 1
	//double x = 1.570796326797;	//90º  - 0
	//double x = 0.5236;			//30º  - 0.866025404
	//double x = 1.047197551198;	//60º  - 0.5
	//double x = 0.7854;			//45º  - 0.707106781
	double result = cosseno(x);
	if (result >= 0)
		printf("O resultado é pos -  %g\n", result);
	else
		printf("O resultado é neg -  %g\n", result);
*/
	// está mal - VER MELHOR A SUBROTINA


/***********************************************************************************************************************************************************************************************************************/
			//Trabalho4

	/*Escreva uma sub-rotina que aceita 3 sequências:
	- seq_P com 2*N valores em vírgula flutuante de precisão simples
	(N >= 0)
	- seq_C com 2*M valores em vírgula flutuante de precisão dupla
	(M > 0)
	- seq_Out com N valores inteiros

	As sequências seq_P e seq_C representam sequências de pontos num
	espaço bidimensional (exemplo: seq_P = {Px0, Py0, Px1, Py1, Px2,
	Py2, ...} ).
	A sub-rotina deve determinar para cada um dos pontos da sequência
	seq_P, qual dos pontos da sequência seq_C é que se encontra mais
	próximo.
	O índice (0 a M-1) do ponto da seq_C mais próximo de um ponto
	P_i (i entre 0 e N-1, inclusivé) deve ser guardado na sequência
	seq_Out na posição i.
	O cálculo da distância entre dois pontos deve ser realizado
	usando a seguinte expressão:

	distancia = sqrt((x2-x1)^2+(y2-y1)^2)

	No caso de dois ou mais pontos da sequência seq_C se encontrarem
	à mesma distância de um ponto da sequência seq_P e essa distância
	for a mínima, deve ser guardado o índice do ponto de seq_C com
	índice menor.

	A sub-rotina deve ser o nome eStep e aceitar os seguintes
	argumentos pela ordem indicada:
	(1) valor de N (do tipo unsigned word)
	(2) endereço-base de seq_P
	(3) valor de M (do tipo unsigned word)
	(4) endereço-base de seq_C
	(5) endereço-base de seq_Out

	Para efeitos de teste podem utilizar o seguinte código:
*/
/*
	unsigned int N = 5, M = 3;
	float seq_P[] = {-3.1, 0, 2.5, -2, 3, 2, 0.5, 1, -5, -1};
	double seq_C[] = {-2, -2, 0, 0, 2, 2};
	//unsigned int N = 3, M = 2;
	//float seq_P[] = {-3.1, 0, 2.5, -2, 3, 2};
	//double seq_C[] = {-2, -2, 0, 0};

	//double seq_C[] = {0, 0, 0, 0, 0, 0};
	//double seq_C[] = {23, 12, 0, 0, 5.8, 3.9};
	unsigned int seq_Out[N];
	//double seq_Out[N];
	//double resposta;

	eStep(N, seq_P, M, seq_C, seq_Out);
	//resposta = experiencias(N, seq_P, M, seq_C, seq_Out);

	//printf("Resultado = %f", resposta);
*/
/*
	for(int i = 0; i < N; i++){
		printf("O ponto %d da seq_P (%f, %f) tem como ponto da seq_C mais próximo o ponto de índice %d (%f, %f)\n",
				i, seq_P[i*2], seq_P[i*2 + 1], seq_Out[i], seq_C[seq_Out[i]*2], seq_C[seq_Out[i]*2 + 1]);
	}
*/

	// 	medidas menores = {2.28254, 3.20156, 6.40312, 1.11803, 3.16228}
/*
	printf ("Seq_Out\n");

	for (int k = 0; k < N; k++)
	{
		printf(" - %d", seq_Out[k]);
	}

*/
		// Neste exemplo a sequência seq_Out deveria passar a conter
	//{0, 1, 2, 1, 0} após a execução da sub-rotina
	/*
	Obs:
	Considerar que no cálculo da distância entre dois pontos não
	ocorre overflow.
	A sub-rotina deve ser colocada num ficheiro designado
	"estep_upXXXXXXXXX_1MIEIC0x.s", em que "XXXXXXXXX" é o código do
	estudante e "x" é o número da turma.
	*/

/***********************************************************************************************************************************************************************************************************************/
			// Ficha 6 - Ex. 1 - a)
/*
	float primvetor[] = {3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -2.5, 2.1, 1.4, 3.0, 2.3, 1.6};
	float segvetor[] = {1.1, 1.2, 1.3, 1.1, 1.4, 1.8, 1.6, 1.4, 1.2, 1.5, 1.7, 1.4, 1.5, 1.9, 1.1, 1.0};
	float tervetor[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
	int tamanho = 16;
	F6EX1A(primvetor, segvetor, tervetor, tamanho);
	for(int i = 0; i < tamanho; i++)
	{
		if(tervetor[i] < 0)
		{
			printf("R[%d]= Neg %f\n", i, tervetor[i]);
		}
		else
		{
			printf("R[%d]= Pos %f\n", i, tervetor[i]);
		}
	}
*/
	/* CÓDIGO DO PROF

	printf(“EX1 A)\n”);
	float PFSIMDFEX1A[] = { 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1};
	float QFSIMDFEX1A[] = { 1.4, 1.3, 1.0, 1.1, 1.4, 1.3, 1.0, 1.1, 1.4, 1.3, 1.0, 1.1, 1.4, 1.3, 1.0, 1.1};
	float RFSIMDFEX1A[] = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
	int NFSIMDFEX1A = 16;
	somaVFSIMDFEX1A(PFSIMDFEX1A, QFSIMDFEX1A, RFSIMDFEX1A, NFSIMDFEX1A );
	for(int i = 0; i < 16; i++) {
		printf(“R[%d]= %f\n”,i, RFSIMDFEX1A[i]);
	}
	 */

/***********************************************************************************************************************************************************************************************************************/
			// Ficha 6 - Ex. 1 - b)
	/*
	float primvetor[] = { 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1};
	int tamanho = 16;
	float nmult = 2.0;
	F6EX1B(primvetor, tamanho, nmult);
	for(int i = 0; i < tamanho; i++)
	{
		if(primvetor[i] < 0)
		{
			printf("R[%d]= Neg %f\n", i, primvetor[i]);
		}
		else
		{
			printf("R[%d]= Pos %f\n", i, primvetor[i]);
		}
	}
	*/

	/* CÓDIGO DO PROF

	printf(“EX1 B)\n”);
	float PFSIMDFEX1B[] = { 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1};
	int NFSIMDFEX1B = 16;
	float KFSIMDFEX1B = 2.0;
	altVFSIMDFEX1B(PFSIMDFEX1B, NFSIMDFEX1B, KFSIMDFEX1B );
	for(int i = 0; i < 16; i++) {
		printf("R[%d]= %f\n",i, PFSIMDFEX1B[i]);
	}
	*/


/***********************************************************************************************************************************************************************************************************************/
				// Ficha 6 - Ex. 2 -

	/*
	int primvetor[] = { 3, 5, 1, 1, 3, 5, 1, 1, 3, 5, 1, 1, 3, 5, 1, 1};
	int segvetor[] = { 2, 3, 1, 1, 2, 3, 1, 1, 2, 3, 1, 1, 2, 3, 1, 1};
	// tem de dar 92
	int tamanho = 16;
	long int pro = 0;
	pro = F6EX2(primvetor, segvetor, tamanho);
	printf("Produto interno = %ld\n", pro);
	*/


/***********************************************************************************************************************************************************************************************************************/
			// Ficha 6 - Ex. 3 -
/*
	char palavra[] = "frasedeteste21sd";
	//char palavra[] = "olaeuestoubemsim";
	long int tamanho = 16;
	char valor = 'd';
	//char valor = 'e';
	long int resposta = 0;
	resposta = F6EX3(palavra, tamanho, valor);
	printf("Elementos encontrados = %d\n", resposta);
*/
/***********************************************************************************************************************************************************************************************************************/
			// Ficha 6 - Ex. 4 -
/*
	int vetor[8] __attribute__((aligned(16))) = { 0x7FFFFFFF, 0x80000000, 0x7FFFFF00, 0x7FFFFFF0, 0x8000003, 0x80000009, 0x7FF00000, -3};
	int tamanho[8] __attribute__((aligned(16))) = { 0x7FFFFFFF, 0x80000000, 0x7FFFFF00, 0x7FFFFFF0, 0x8000003, 0x80000009, 0x7FF00000, -3};
	F6EX4(vetor, 8, 32);
	for (int i=0; i<8; i++)
		printf("%d (0x%08X) ", vetor[i], vetor[i]);
	puts("");
	F6EX4(tamanho, 8, -32);
	for (int i=0; i<8; i++)
		printf("%d (0x%08X) ", tamanho[i], tamanho[i]);
	puts("");
*/

/***********************************************************************************************************************************************************************************************************************/
			// Ficha 6 - Ex. 6 -
/*
	double vetor[] = { 3.4, 5.3, -1.0, -2.1};
	long int tamanho = 4;
	double resposta = 0.0;
	resposta = F6EX6(vetor, tamanho);
	printf("Norma do vector = %f\n", resposta);
*/

/***********************************************************************************************************************************************************************************************************************/
			// Ficha 6 - Ex. 9 -
/*
	float primeiro_vetor[] = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 };
	float segundo_vetor[] = { 2.0, 5.0, 4.0, 3.0, 6.0, -3.0, 10.0, 10.0 };
	float terceiro_vetor[] = { 1.0, -2.0, 2.0, 6.0, -3.0, 7.0, 10.0, -10.0};
	long int tamanho = 4;
	F6EX9(segundo_vetor, terceiro_vetor, primeiro_vetor, tamanho);
	for(int i = 0; i < 8; i++)
	{
		printf("R[%d]= %f\n",i, primeiro_vetor[i]);
	}
*/

/***********************************************************************************************************************************************************************************************************************/
			//Trabalho 5
	/*
	O objetivo deste trabalho é determinar a frequência relativa de um
	conjunto de letras existentes num texto, utilizando instruções SIMD
	sempre que as operações necessárias possam envolver vários dados em
	paralelo.

	Significado dos parâmetros:
	- N:    número de carateres do texto
	- text: endereço base da sequência de carateres que constitui o
	texto
	- nl:    número de letras a pesquisar
	- lett: endereço base da sequência de letras a pesquisar
	- freq: endereço base da sequência de frequências relativas das
	letras

	Para cada uma das 'nl' letras da sequência endereçada por 'lett'
	pretende-se determinar a sua frequência relativa no texto e guardar
	este resultado na posição correspondente da sequência endereçada por
	'freq'. Sendo i (0 <= i < nl) a posição de uma letra a pesquisar, a
	respetiva frequência relativa é guardada na posição i da sequência
	de frequências.

	A função retorna a letra a pesquisar que mais vezes ocorre no texto.
	Caso existam duas ou mais letras nestas circunstâncias, considerar a
	primeira encontrada. Se nenhuma das letras a pesquisar ocorrer no
	texto ou se o número destas for 0, então a função deve retornar 0.

	Considerar que:
	- o número de carateres do texto é múltiplo de 16;
	- nenhum dos carateres do texto nem da sequência de letras a
	pesquisar possui acentos ou cedilha;
	- a sequência de letras a pesquisar é composta por minúsculas;
	- uma letra a pesquisar pode surgir no texto nas formas minúscula
	ou maiúscula (a diferença entre os códigos ASCII de uma letra
	minúscula e respetiva maiúscula é 32);
	- a frequência relativa é expressa em percentagem.

	Exemplo de utilização para efeitos de teste:

*/
/*
	    unsigned int N = 48;
	    char text[] = "A funcao retorna a frequencia absoluta da letra ";
	    char nl = 4;
	    char lett[] = {'p', 'a', 'u', 'r'};
	    float freq[nl];
	    char buf[10];

	    char res = freqchars(N, text, nl, lett, freq);

	    if (nl)
	        for(int i = 0; i < nl; i++) {
	            gcvt(freq[i], 3, buf);
	            // para contornar o bug do printf ao imprimir floats
	            printf("A letra '%c' ocorre em %s%% do texto.\n", lett[i], buf);
	        }
	    if (res)
	        printf("Das letras pesquisadas no texto, '%c' é a mais frequente.\n", res);
*/
	        // Neste exemplo, 'freq' deverá conter {0, 18.8, 6.25, 8.33}
//após a execução da sub-rotina
	        // e 'a' é o carater mais frequente.

/***********************************************************************************************************************************************************************************************************************/
		// Questionário 2
/*
	float primeiro_vetor[] = { 2, 2, 2, 2};
	float segundo_vetor[] = { 1, 1, 1, 1 };
	questionario2(primeiro_vetor,segundo_vetor);
	for(int i = 0; i < 4; i++)
	{
		if (primeiro_vetor[i] < 0)
		{
			printf("R[%d]= neg %f\n",i, primeiro_vetor[i]);
		}
		else
		{
			printf("R[%d]= pos %f\n",i, primeiro_vetor[i]);
		}
	}
*/
/***********************************************************************************************************************************************************************************************************************/
		// QUESTÕES-TIPO EXAME

	//Ex7 - a)
/*
	long int vector[] = {3, 1, 4, 0, -3, 5, 10, -10};
	int n = 4;
	long int result = menorX(vector, n);
	printf ("Menor X = %ld\n", result);
*/
	//Ex7 - b)
/*
	long int vector[] = {3, 1, 4, 0, -3, 5, 10, -10};
	int n = 4;
	long int result = maiorY(vector, n);
	printf ("Maior Y = %ld\n", result);
*/
/*
	long int vector[] = {3, 1, 4, 0, -3, 5, 10, -10};
	//long int vector[] = {3, 1, 4, 0, -3, -10, 10, 5};
	int n = 4;
	int result = PONTO(vector, n);
	printf ("RESULT = %d\n", result);
*/

	//Ex8
	/*
	unsigned char *txt = "Hoje vou para a FEUP n autocarro";
	unsigned int n = 32;
	unsigned int result = words(txt, n);
	printf ("nº de palavras = %d\n", result);
*/


	//Ex9
	/*
	double x = 2.7;
	//double x = -3.5;
	//double x = 2;
	//double x = 10.6;
	double result = Func(x);
	printf("Result = %f\n", result);
*/

	//Ex10
	/*
	float peso = 55;
	//float peso = 60;
	float altura = 1.60;
	//char genero = 'F';
	char genero = 'M';
	float result = pesoideal(peso, altura, genero);
	printf("A diferença entre o peso atual e o peso ideal é: %f\n", result);
*/

	//Ex11
/*
	float x = 5.7;
	float y = -0.7;
	float ptK[] = {5.3, -1.0, -2.1, 3.4, 5.3, -1.0, -2.1, 1.5};
	int n = 4;
	float result = Dmax(x, y, ptK, n);
	if (result < 0)
		printf("Distância máxima = NEG %f\n", result);
	else
		printf("Distância máxima = POS %f\n", result);
*/
	//Ex12

	// a)
	/*
	char letra = 'A';
	//char letra = 'B';
	//char letra = 'M';
	//char letra = 'N';
	//char letra = 'Z';
	printf("Letra cifrada: %c\n", rot13(letra));
*/

	// b)
	/*
	unsigned char *clt = "FEUP 2019 mpcp";
	cypher(clt);
	for (int i = 0; i < 15; i++)
		printf("%c - ", clt[i]);
*/
/***********************************************************************************************************************************************************************************************************************/

	printf("\n\n**********************************************************************************");
	return EXIT_SUCCESS;
}
