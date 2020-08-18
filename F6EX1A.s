.text
.global F6EX1A
.type F6EX1A, "function"

// float primvetor - Q0
// float segvetor - Q1
// float tervetor - Q2
// int tamanho - X3


F6EX1A:		LSR W3, W3, #2
ciclo:		CBZ X3, fim
			LDR Q0, [X0]
			LDR Q1, [X1]
			FADD V2.4S, V0.4S, V1.4S
			STR Q2, [X2]
			ADD X0, X0, #16
			ADD X1, X1, #16
			ADD X2, X2, #16
			SUB X3, X3, #1
			B ciclo
fim:		RET
