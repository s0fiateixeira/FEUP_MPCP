/*
 ============================================================================
 Name        : Projeto1.c
 Author      : Sofia Teixeira
 Version     : 1.0
 Description : Main Function
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//extern int fourxintab(int *vec, int tamv, int a, int b);
//extern int CheckRange( int lim, int tam, int *seq);

int main(void) {
	printf("**********************************************************************************\n\n");

/**********************************************************************************************************/
/*	Trabalho 0

	Determinar o numero de valores (X) de uma sequencia (vetor) de N elementos (N>=0)
	em que 4 * X pertence ao intervalo [a; b]. Considerar que os valores sao do tipo unsigned word.
	EX: Assumindo V= [ 40, 5, 3, 12, 13, 21] e [a; b]=[13 84] a resposta e 4.
	Podem usar o seguinte codigo C para invocar e testar a vossa funcao:*/

   /* int vecint[]= {40, 5, 3, 12, 13, 21};
    int tamvec = 6;
    int inflim2 = 13;
    int suplim2 = 84;
    int fourxintabresult = fourxintab(vecint, tamvec, inflim2, suplim2);
    printf("fourxintabresult = %d\n",fourxintabresult);
	         // para este exemplo fourxintabresult = 4
*/

/***********************************************************************************************************/
	/*	Trabalho 1

		Escrever uma sub-rotina que, para um dado valor positivo (o limiar),
		substitui os elementos de uma sequencia que nao pertencem ao intervalo
		[-limiar;+limiar] pelo valor do extremo do intervalo mais proximo desses
		elementos e devolve o numero de elementos modificados. Os elementos da
		sequencia sao do tipo signed word.

		A sub-rotina deve ter o nome CheckRange e aceitar os seguintes argumentos pela ordem indicada:
		(1) valor limiar (do tipo unsigned word);
		(2) numero de elementos da sequencia (do tipo unsigned word);
		(3) endereco-base da sequencia.

		Para efeitos de teste podem utilizar o seguinte codigo:
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
		// no final da execucao a sequencia ve[] = {7, -8, -20, 20, 20, -10, 0, 20}
		//(podem verificar o seu conteudo durante a execucao em modo debug)
*/


	printf("\n\n**********************************************************************************");
	return EXIT_SUCCESS;
}
