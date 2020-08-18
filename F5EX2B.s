.text
.data
PI: .double 3.141592653
.global F5EX2B
.type F5EX2B, "function"

//raio - D0

F5EX2B:		LDR D1, PI
			FMUL D0, D0, D0
			FMUL D0, D0, D1
			RET
