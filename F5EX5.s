.text
.global F5EX5
.type F5EX5, "function"

//double prodint(float *X, float *Y, int n)
// vetorX - X0
// vetorY - X1
// tamanho n - W2


F5EX5:			MOV X8, #0
				SCVTF D5, X8
ciclo:			CBZ X2, fim
				LDR S0, [X0]
				LDR S1, [X1]
				FCVT D3, S0
				FCVT D4, S1
				FMADD D5, D3, D4, D5
				ADD X0, X0, #4
				ADD X1, X1, #4
				SUB X2, X2, #1
				B ciclo
fim:			FMOV D0, D5
				RET




/*
F5EX5:
				//FMOV S4, #0.0			//resposta a zero no início
				MOV X4, #0
				SCVTF D4, x4
ciclo:			CBZ W2, solucao			//se a dimensão for 0, passa para o final
				LDR S7, [X0], #4		//primeiro vetor
				LDR S6, [X1], #4		//segundo vetor
				FCVT D7, S7
				FCVT D6, S6
				FMUL D5, D7, D6	    	//multiplicar os valores do vetor
				FADD D4, D4, D5			//somar aos restantes valores
				SUB W2, W2, #1			//dimensão do vetor a decrementar
				B ciclo
solucao:		FMOV D0, D4
				RET
*/
