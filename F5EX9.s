.text
.data
CONST1: .double 0.5000000000			// 1/(2!)
CONST2: .double 0.0416666667			// 1/(4!)
CONST3: .double 0.0013888889			// 1/(6!)
CONST4: .double 0.0000024802			// 1/(8!)
CONST5: .double 0.0000000276			// 1/(10!)
CONSTPI: .double 3.14
.global cosseno
.type cosseno, "function"

// double cosseno(double x)
// Sugestão: Declarar um vetor com as constantes n! pré calculadas

// const = {2.00000, 24.00000, 720.00000, 40320.00000, 3628800.00000}



func:			STP X29, X30, [SP, #-16]!
				UCVTF D0, X0
				LDR D1, CONST3					// (não é a const3 definida aqui - ver melhor)
				LDR D2, CONSTPI
				FDIV D0, D0, D1
				FMUL D0, D0, D2
				BL cosseno
				LDR D1, CONST1					// (não é a const1 definida aqui - ver melhor)
				LDR D2, CONST2					// (não é a const2 definida aqui - ver melhor)
				FMUL D0, D0, D2
				FADD D0, D0, D1
				LDP X29, X30, [SP], #16
				RET






cosseno:		STP X29, X30, [SP, #-16]!
				FMUL D0, D0, D0
				FNEG D0, D0
				LDR D1, CONST5
				FMUL D1, D1, D0
				LDR D2, CONST4
				FADD D1, D1, D2
				FMUL D1, D1, D0
				LDR D2, CONST3
				FADD D1, D1, D2
				FMUL D1, D1, D0
				LDR D2, CONST2
				FADD D1, D1, D2
				FMUL D1, D1, D0
				LDR D2, CONST1
				FADD D1, D1, D2
				FMUL D1, D1, D0
				RET











/*
cosseno:	LDR D1, CONST1
			LDR D2, CONST2
			LDR D3, CONST3
			LDR D4, CONST4
			LDR D5, CONST5

			FMUL D0, D0, D0				// D0 = x**2

			FMUL D9, D5, D0
			FSUB D10, D4, D9
			FMUL D11, D10, D0
			FSUB D12, D3, D10
			FMUL D13, D12, D0
			FSUB D14, D2, D12
			FMUL D15, D14, D0
			FSUB D16, D1, D14
			FMUL D17, D16, D0
			FMOV D6, #1.0
			FSUB D18, D6, D16
			FMOV D0, D23
			RET
*/
