.text
.global conta_intervalo
.type conta_intervalo, "function"



conta_intervalo:		EOR X9, X9,X9
ciclo:					CBZ X1, fim
						LDR S9, [X0]
						FCMP S9, S0
						B.LT seguinte
						FCMP S9, S1
						B.GT seguinte
						ADD X9, X9, #1
seguinte:				SUB X1, X1, #1
						ADD X0, X0, #4
						B ciclo
fim:					MOV X0, X9
						RET






/*
X0 - float *V - S6
X1 - long int n
S2 - float a
S3 - float b
RESPOSTA - long int
*/

/*
conta_intervalo:		MOV X7, #0				// resposta está a zero
ciclo:					LDR S6, [X0]			// faz load do valor de elemento do vetor
						CBZ X1, fim
						SUB X1, X1, #1
						FCMP S6, S2				// compara o elemento do vetor com o limite negativo
						B.LT continuar			// se for menor salta para excecao_menor
						CMP S6, S3				// se não for, compara o elemento com o limite positivo
						B.GT continuar			// se for maior salta para excecao_maior
						ADD X7, X7, #1
continuar:				ADD X0, X0, #4
						B ciclo					// se pertencer ao intervalo passa para o próximo elemento do vetor e continua o ciclo
fim:					MOV X0, X7
						RET
*/
