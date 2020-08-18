.text
.global F4EX4A
.type F4EX4A, "function"


F4EX4A:			EOR X8, X8, X8
				MOV X10, X0
ciclo:			LDRB W3, [X0]
				CBZ W3, rescrever
				STR W3, [SP, #-16]!
				ADD X8, X8, #1
				ADD X0, X0, #1
				B ciclo
rescrever:		CBZ X8, fim
				LDR W3, [SP], #16
				STRB W3, [X10]
				SUB X8, X8, #1
				ADD X10, X10, #1
				B rescrever
fim:			RET











/*
// X0 - cadeia de caracteres

F4EX4A:			MOV X4, #0
				STP X29, X30, [SP, #-32]!
colocar_pilha:	LDR W5, [X0]
				CBZ W5, tirar_pilha
				STR W5, [X4]
				ADD W1, W1, #1					//tamanho da string
				ADD X0, X0, #1
				B colocar_pilha
tirar_pilha:	//CBZ
				LDR W3, [X4], #16
				STR W3, [X2]
				ADD X2, X2, #1





				LDP X29, X30, [SP], #16
				RET
*/
