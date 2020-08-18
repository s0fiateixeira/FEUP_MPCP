.text
.global pesoideal
.type pesoideal, "function"


// S0 - peso
// S1 - altura
// W0 - genero

// S5 - peso ideal

pesoideal:	MOV X5, #0
			SCVTF S5, X5
			MOV X15, #10
			SCVTF S15, X15
			MOV X9, #621
			SCVTF S9, X9
			FDIV S9, S9, S15
			MOV X10, #447
			SCVTF S10, X10
			FDIV S10, S10, S15
			MOV X11, #727
			SCVTF S11, X11
			FDIV S11, S11, S15
			MOV X12, #58
			SCVTF S12, X12
			MOV X5, 'M'
			CMP X0, X5
			B.EQ masculino
			FMUL S5, S1, S9
			FSUB S5, S5, S10
comparar:	FSUB S0, S0, S5
			RET
masculino:	FMUL S5, S1, S11
			FSUB S5, S5, S12
			B comparar

