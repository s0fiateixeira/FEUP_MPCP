.text
.global F5EX1B
.type F5EX1B, "function"

// X - D0
// W - X1

F5EX1B:		FSQRT D0, D0
			SCVTF D1, W0
			FADD D0, D0, D1
			RET

