.text
.global CountCommon
.type CountCommon, "function"

// Escrever uma sub-rotina que aceita  duas sequencias seq_A e
// seq_B de N e M numeros inteiros (M, N >= 0), respetivamente.
// Os elementos da sequencia seq_B sao todos distintos. Os
// elementos das sequencias sao do tipo signed word. A sub-rotina
// determina quantos elementos de seq_A surgem em seq_B. O
// resultado e do tipo unsigned word.

// A sub-rotina deve ter o nome CountCommon e aceitar
// os seguintes argumentos pela ordem indicada:

//(1) valor de N (do tipo unsigned word); - W0 - W6(alteravel) e W7(nao alteravel)
//(2) endereco-base de seq_A;             - X1 - W4
//(2) valor de M (do tipo unsigned word); - W2
//(3) endereco-base da sequencia seq_B.   - X3 - W5
							// resposta   - W0

CountCommon:	MOV W7, W0						// ter o valor de tamA sempre preservado para as seguintes chamadas da subrotina
				MOV W6, W0						// deixa o W0 livre para a resposta
				EOR W0, W0, W0					// resposta a 0 (inicialmente)
				STP X29, X30, [SP, #-32]!		// preserva o X29 e o X30
percorre_seqB:	LDR W5, [X3]					// faz load do valor da seqB
				CBZ W2, fim						// se o tamB = 0, acaba o ciclo
				SUB W2, W2, #1					// se nao, subtrai 1 valor ao tamB
				BL percorre_seqA
				ADD X3, X3, #4					// passa para o elemento seguinte de seq_B
				B percorre_seqB
fim:			LDP X29, X30, [SP], #32			// preservar o X29 e o X30
				RET


percorre_seqA:	LDR W4, [X1]					// faz load do valor da seqA
				CBZ W6, fim_ciclo				// se tamA = 0, comeca no proximo valor de seq_B
				SUB W6, W6, #1					// se nao, subtrai 1 valor ao tamA
				CMP W4, W5						// compara o valor da seq_A com o da seq_B
				B.EQ igual						// se forem iguais salta para 'igual'
				ADD X1, X1, #4					// se nao for, passa para o elemento seguinte de seq_A
				B percorre_seqA
igual:			ADD W0, W0, #1					// adiciona 1 a solucao desta subrotina
				ADD X1, X1, #4					//			 passa para o elemento
				B percorre_seqA					//				seguinte de seq_A
fim_ciclo:		MOV W6, W7						// voltar a manter o numero inicial do tamA
				MOV X11, #4						// X10 e X11 sao registos temporarios apenas usados nesta subrotina
				MUL X10, X6, X11				// multiplicar o tamanho do vetor por 4 (tamanho que ocupa na memoria)
				SUB X1, X1, X10					// atribuir a sequencia original da seq_A a X1
				RET
