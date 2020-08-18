.text
.global rot13
.type rot13, "function"


// X0 - char

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
