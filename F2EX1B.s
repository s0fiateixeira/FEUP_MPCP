.text
.global F2EX1B
.type F2EX1B, "function"

// o que não está comentado é a única parte do exercício que interessa. O resto serve para testar em prints e chamadas no main

F2EX1B:		//MOV X10, X0
			//MOV X11, X1
			CMP X10, X11
			B.GE maior
			MOV X9, X11
//final:		MOV X0, X9
			//RET
maior: 		MOV X9, X10
			//B final
