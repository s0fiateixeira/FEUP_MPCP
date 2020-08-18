.text
.global F3EX7E
.type F3EX7E, "function"


// Igual ao anterior, mas com overflow
// Se os 32 bits mais significativos for tudo 00 ou tudo 11 significa que têm o mesmo sinal e então não ocorre overflow

/* X0 = v1dimF3EX7E - vetor
X1 = v2dimF3EX7E
X2 = dimF3EX7E);*/


F3EX7E:
				MOV X4, #0				//resposta
ciclo:			LDR W7, [X0], #4		//primeiro vetor
				LDR W6, [X1], #4		//segundo vetor
				CBZ W2, solucao			//se a dimensão for 0, passa para o final
				SUB W2, W2, #1			//dimensão do vetor a decrementar
				SMULL X5, W7, W6		//multiplicar os valores do vetor
				ADD W4, W4, W5			//somar aos restantes valores
				ASR X3, X4, #32			//passa o acumulador 32 bits para a direita (fica só a parte mais significativa - com sinal)
				CBZ X3, ciclo			//se X3 for zero, continua o ciclo
				CMP X3, #-1				//se não for, compara X3 com -1
				B.NE overflow			//se este valor não for igual a -1 passa para o overflow
				B ciclo
overflow:		MOV W0, #-1				//W0 - FFFFFFFFh
				LSR W0, W0, #1			//para imprimir o maior número inteiro em int (7FFFFFFFh) - MOV X0, #2147483647
				RET
solucao:		MOV X0, X4
				RET
