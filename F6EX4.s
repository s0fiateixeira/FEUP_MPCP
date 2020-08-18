.text
.global F6EX4
.type F6EX4, "function"

/*
int *Z - X0
int n  - W1
int x  - W2
*/


F6EX4:	LSR W1, W1, #2
		DUP V3.4S, W2					// valor a somar
ciclo:	CBZ W1, fim
		LDR Q0, [X0]
		SQADD V0.4S, V0.4S, V3.4S
		STR Q0, [X0], #16
		SUB W1, W1, #1
		B ciclo
fim:	RET
