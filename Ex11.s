.text
.global Dmax
.type Dmax, "function"


// S0 - float x
// S1 - float y
// X0 - float *ptK
// X1 - int n

Dmax:		MOV X7, #0
			SCVTF S7, X7
ciclo:		CBZ X1, fim
			SUB X1, X1, #1
			LDR Q2, [X0], #4			// xn
			LDR Q3, [X0], #4			// yn
			FSUB V4.4S, V0.4S, V2.4S	// x-xn
			FSUB V5.4S, V1.4S, V3.4S	// y-yn
			FMUL V4.4S, V4.4S, V4.4S	// (x-xn)^2
			FMUL V5.4S, V5.4S, V5.4S	// (y-yn)^2
			FADD V5.4S, V5.4S, V4.4S	// (x-xn)^2 + (y-yn)^2
			FSQRT V5.4S, V5.4S			// sqrt[(x-xn)^2 + (y-yn)^2]
			MOV S6, V5.4S[0]
			FCMP S6, S7
			B.GT maior
			B ciclo
maior:		FMOV S7, S6
			B ciclo
fim:		FMOV S0, S7
			RET
