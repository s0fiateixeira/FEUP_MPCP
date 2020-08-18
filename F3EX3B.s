/*.text
.global F3EX3B
.type F3EX3B, "function"

F3EX3B:	EOR X4, X4, X4
ciclo:	LDRB W3, [X0]
		CBZ W3, fim
		CMP W3, W1
		B.NE adi
		ADD X4, X4, #1
adi:	ADD X0, X0, #1
		B ciclo
fim:	MOV X0,X4
		RET
*/
