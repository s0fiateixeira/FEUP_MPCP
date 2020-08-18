.text
.global menorX
.type menorX, "function"


// X0 - long int
// W1 - int


menorX:		EOR X3, X3, X3
			EOR X6, X6, X6
			CBZ W1, fim
			SUB W1, W1, #1
			LDR X3, [X0], #16
			MOV X6, X3
ciclo:		CBZ W1, fim
			SUB W1, W1, #1
			LDR X3, [X0], #16
			CMP X3, X6
			B.LT menor
			B ciclo
menor:		MOV X6, X3
			B ciclo
fim:		MOV X0, X6
			RET
