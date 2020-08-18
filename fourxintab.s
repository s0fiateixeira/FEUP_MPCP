.text
.global fourxintab
.type fourxintab, "function"

		// Inputs da função em c:			// X0 = vetor
											// X1 = tamanho do vetor
											// X2 = min
											// X3 = max
fourxintab:
				MOV X4, #0					// W4 = número de valores que fazem parte do intervalo (RESPOSTA) - certificar que está a 0 no início
ciclo:			LDR W7, [X0], #4			// W7 = valor do vetor; o 4 vai fazer com que nos próximo acesso seja feito 4 bytes à frente
				CBZ W1, solucao			//Se o tamanho do vetor for 0, então dá print à solução: Se não continua:
				SUB W1, W1, #1 			//tamanho do vetor -= 1
				MOV W6, #4				//W6 = 4 (tive de fazer isto porque não estava a dar para multiplicar diretamente por um número - perguntar ao prof.)
				MUL W5, W7, W6			//W5 = valor do vetor*4
				CMP W5, W2				//compara o valor de W5 com o mínimo
				B.LO ciclo  		    //Se for menor(LO) que o mínimo (não pertence ao intervalo) então passa para o valor seguinte do vetor
				CMP W5, W3				//Se não, compara o valor de X5 com o máximo
				B.HI ciclo   			//Se for maior(HI) que o máximo (não pertence ao intervalo) então passa para o valor seguinte do vetor
				ADD X4, X4, #1			//Se o valor estiver dentro do intervalo, adiciona-se 1 à resposta que se quer
				B ciclo					//Volta ao ciclo
solucao:		MOV X0, X4
				RET
