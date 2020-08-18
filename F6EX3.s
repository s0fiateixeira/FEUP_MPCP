.text
.global F6EX3
.type F6EX3, "function"

/*
palavra            - X0
tamanho da palavra - X1
valor a comparar   - X2
*/


F6EX3:		MOV X4, #0						// resposta a 0 no início
			LSR X1, X1, #4
			DUP V2.16B, W2
ciclo:		CBZ X1, fim
			SUB X1, X1, #1
			LDR Q0, [X0]
			CMEQ V3.16B, V0.16B, V2.16B
			ADDV B3, V3.16B
			SMOV X3, V3.B[0]
			NEG X3, X3						// se for igual fica tudo a 1
			ADD X4, X4, X3
			ADD X0, X0, #1
			B ciclo
fim:		MOV X0, X4
			RET
