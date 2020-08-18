.text
.global words
.type words, "function"

// X0 - txt - unsigned char*
// W1 - n - unsigned int

words:	EOR X7, X7, X7
		MOV W2, ' '
		DUP V1.16B, W2
ciclo:	CBZ W1, fim
		SUB W1, W1, #16
		LDR Q0, [X0], #16
		CMEQ V2.16B, V0.16B, V1.16B
		ADDV B3, V2.16B
		SMOV W3, V3.B[0]
		SUB X7, X7, X3
		B ciclo
fim:	ADD X0, X7, #1
		RET
