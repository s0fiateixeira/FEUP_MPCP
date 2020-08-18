.text
.global fourxintab
.type fourxintab, "function"

		// Inputs da fun��o em c:			// X0 = vetor
											// X1 = tamanho do vetor
											// X2 = min
											// X3 = max
fourxintab:
				MOV X4, #0					// W4 = n�mero de valores que fazem parte do intervalo (RESPOSTA) - certificar que est� a 0 no in�cio
ciclo:			LDR W7, [X0], #4			// W7 = valor do vetor; o 4 vai fazer com que nos pr�ximo acesso seja feito 4 bytes � frente
				CBZ W1, solucao			//Se o tamanho do vetor for 0, ent�o d� print � solu��o: Se n�o continua:
				SUB W1, W1, #1 			//tamanho do vetor -= 1
				MOV W6, #4				//W6 = 4 (tive de fazer isto porque n�o estava a dar para multiplicar diretamente por um n�mero - perguntar ao prof.)
				MUL W5, W7, W6			//W5 = valor do vetor*4
				CMP W5, W2				//compara o valor de W5 com o m�nimo
				B.LO ciclo  		    //Se for menor(LO) que o m�nimo (n�o pertence ao intervalo) ent�o passa para o valor seguinte do vetor
				CMP W5, W3				//Se n�o, compara o valor de X5 com o m�ximo
				B.HI ciclo   			//Se for maior(HI) que o m�ximo (n�o pertence ao intervalo) ent�o passa para o valor seguinte do vetor
				ADD X4, X4, #1			//Se o valor estiver dentro do intervalo, adiciona-se 1 � resposta que se quer
				B ciclo					//Volta ao ciclo
solucao:		MOV X0, X4
				RET
