.text
.global F5EX2A
.type F5EX2A, "function"

//A - S0
//B - S1
//C - S2
//D - S3

F5EX2A:		FSUB S4, S0, S1
			FMUL S5, S4, S2
			MOV W6, #3
			SCVTF S7, W6
			FADD S3, S3, S0
			FSUB S3, S3, S7
			FDIV S0, S5, S3
			RET
