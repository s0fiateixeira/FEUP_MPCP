.text
.global F6EX1B
.type F6EX1B, "function"

// float primvetor - Q0
// int tamanho - X1
// float nmult - D2


F6EX1B:
ciclo:		CBZ X1, fim
			LDR Q1, [X0]
			FMUL V1.4S, V1.4S, V0.S[0]
			STR Q1, [X0]
			ADD X0, X0, #16
			SUB X1, X1, #1
			B ciclo
fim:		RET

