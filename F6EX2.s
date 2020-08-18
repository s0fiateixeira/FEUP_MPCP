.text
.global F6EX2
.type F6EX2, "function"


// int primvetor - X0
// int segvetor - X1
// int tamanho - X2



F6EX2:		MOV X4, #0
			LSR W2, W2, #2
ciclo:		CBZ X2, fim
			LDR Q0, [X0]
			LDR Q1, [X1]
			MUL V2.4S, V0.4S, V1.4S
			ADDV S3, V2.4S
			SMOV X3, V3.S[0]
			ADD X4, X4, X3
			ADD X0, X0, #4
			ADD X1, X1, #4
			SUB X2, X2, #1
			B ciclo
fim:		MOV X0, X4
			RET
