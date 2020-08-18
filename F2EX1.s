.text
.global F2EX1C
.type F2EX1C, "function"

// o que não está comentado é a única parte do exercício que interessa. O resto serve para testar em prints e chamadas no main


//a)
			LDR X0, [X10]
			SUB X0, X0, #1
			STR X0, [X10]

//b)
			LDR X0, [X10]
			LDR X1, [X11]
			CMP X0, X1
			B.GE maior
			STR X1, [X9]
maior:		STR X0, [X9]


//c)


//d)
