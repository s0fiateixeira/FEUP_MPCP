.text
.global cypher
.type cypher, "function"

// X0 - char*


cypher:		STP X29, X30, [SP, #-32]
			STR X20, [SP, #16]
			MOV X29, SP
			MOV X10, X0
			MOV X15, X0
			MOV W12, #65
			MOV W13, #90
ciclo:		LDRB W11, [X10], #1
			CBZ W11, fim
			CMP W11, W12
			B.LT next
			CMP W11, W13
			B.GT next
			BL rot13
			STRB W0, [X15], #1
			B ciclo
next:		STRB W11, [X15], #1
			B ciclo
fim:		MOV X0, X15
			LDP X29, X30, [SP], #16
			LDR X20, [SP], #16
			RET





rot13:		MOV X2, #65		// 65 = 'A'
			MOV X3, #90		// 90 = 'B'
			ADD X0, X0, #13
			CMP X0, X3
			B.GT maiorZ
continuar:	RET
maiorZ:		SUB X0, X0, X3
			ADD X0, X0, X2
			SUB X0, X0, #1
			B continuar
