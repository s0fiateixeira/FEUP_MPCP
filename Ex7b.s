.text
.global PONTO
.type PONTO, "function"


// X0 - long int
// W1 - int


PONTO:		EOR X7, X7, X7
			STP X29, X30, [SP, #-32]!
			STR X20, [SP, #16]
			MOV X29, SP
			MOV X10, X0
			MOV W11, W1
			BL menorX
			MOV X12, X0							// X12 - menorX
			MOV X0, X10
			MOV W1, W11
			BL maiorY
			MOV X13, X0							// X13 - maiorY
			MOV X0, X10
			MOV W1, W11
next:		CBZ W1, fim_ciclo
			SUB W1, W1, #1
			LDR X3, [X0]
			CMP X3, X12
			B.EQ verificarY
			ADD X0, X0, #16
			B next
verificarY: ADD X0, X0, #8
			LDR X3, [X0]
			CMP X3, X13
			ADD X0, X0, #8
			B.EQ coordenada
			B next
coordenada:	MOV X7, #1
fim_ciclo:	MOV X0, X7
			LDP X29, X30, [SP], #16
			LDR X20, [SP], #16
			RET







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






maiorY:		EOR X3, X3, X3
			EOR X6, X6, X6
			CBZ W1, end
			SUB W1, W1, #1
			ADD X0, X0, #8
			LDR X3, [X0], #16
			MOV X6, X3
cicle:		CBZ W1, end
			SUB W1, W1, #1
			LDR X3, [X0], #16
			CMP X3, X6
			B.GT maior
			B cicle
maior:		MOV X6, X3
			B cicle
end:		MOV X0, X6
			RET
