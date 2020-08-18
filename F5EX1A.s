.text
.global F5EX1A
.type F5EX1A, "function"

// B - D0
// M - D1
// N - D2

F5EX1A:		FADD D3, D2, D0
			FNEG D4, D1
			FMUL D0, D4, D3
			RET
