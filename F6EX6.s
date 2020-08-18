.text
.global F6EX6
.type F6EX6, "function"

/*
double *ptV - X0
long int n  - W1
*/

F6EX6:		MOV X4, #0						// resposta a zero
			SCVTF D5, X4

			LSR W1, W1, #1					// é só uma divisão por 2

ciclo:		CBZ X1, fim
			SUB X1, X1, #1
			LDR Q0, [X0], #16
			FMUL V1.2D, V0.2D, V0.2D
			FADDP D2, V1.2D
			FADD D5, D5, D2
			//SMOV X3, V1.D[0]
			//ADD X4, X4, X3
			B ciclo
fim:		FSQRT D0, D5
			RET
