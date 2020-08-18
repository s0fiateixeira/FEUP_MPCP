.text
.global F4EX3
.type F4EX3, "function"


F4EX3: 			STP X29, X30, [SP, #-32]!   // parte nova - preservar na pilha (estes são sempre)
				STR X20, [SP, #16]			// parte nova - faz parte dos registos que não são protected e faz cópia para se guardar
				MOV X29, SP					// parte nova
				MOV X10, X0 // <1>
				BL QUAD
				MOV X20, X0
				MOV X0, #3
				MUL X10, X10, X0
				ADD X0, X20, X10
				ADD X0, X0, #1
				LDP X29, X30, [SP], #16		// parte nova
				LDR X20, [SP], #16			// parte nova
				RET // <2>



QUAD: 	MUL X0, X0, X0
		RET
