/*.text
.global SOMA_V
.type SOMA_V, "function"

SOMA_V:	EOR w4,w4,w4
CICLO:	cbz x1, FIM
		ldr w3,[x0]
		sub x1,x1,1
		add w4,w4,w3
		add x0,x0,#4
		b CICLO
FIM:	mov w0,w4
ret
*/
