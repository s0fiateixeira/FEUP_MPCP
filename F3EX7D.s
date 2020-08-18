.text
.global F3EX7D
.type F3EX7D, "function"

F3EX7D:
				MOV X4, #0				//resposta
ciclo:			LDR W7, [X0], #4		//primeiro vetor
				LDR W6, [X1], #4		//segundo vetor
				CBZ W1, solucao
				SUB W2, W2, #1			//dimensão do vetor a decrementar
				SMULL X5, W7, W6		//multiplicar os valores do vetor
				ADD W4, W4, W5			//somar aos restantes valores
				CBZ W2, solucao
				B ciclo
solucao:		MOV X0, X4
				RET


/*X0 = v1dimF3EX7D
X1 = v2dimF3EX7D
X2 = dimF3EX7D);*/
