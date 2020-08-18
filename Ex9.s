.text
.global Func
.type Func, "function"

// D0 - x - double

Func:		MOV X1, #-2
			MOV X2, #2
			SCVTF D1, X1
			SCVTF D2, X2
			FCMP D0, D2
			B.LT menor2
			FMUL D1, D1, D0
			FSQRT D3, D0
			FADD D1, D1, D3
			FMOV D0, D1
			RET
menor2:		FMUL D3, D0, D0
			FMUL D3, D3, D0
			FMOV D0, D3
			RET
