.text
.global questionario2
.type questionario2, "function"


questionario2:		INS V0.S[1], V1.S[0]
					INS V0.S[3], V0.S[1]
					DUP V0.4S, V0.S[0]
					RET
