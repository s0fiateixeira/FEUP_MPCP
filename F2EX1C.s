.text
.global F2EX1C
.type F2EX1C, "function"

// o que n�o est� comentado � a �nica parte do exerc�cio que interessa. O resto serve para testar em prints e chamadas no main

F2EX1C:		MOV X15, X0
			MOV X1, #0
			CMP X15, X1
			B.LT negativo
			MOV X0, X15
			RET
negativo:	NEGS X15, X15
			MOV X0, X15
			RET
