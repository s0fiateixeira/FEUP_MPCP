.text
.global eStep
.type eStep, "function"


/*
2 vetores com coordenadas de pontos:
seq_P[] = {px0, py0, px1, py1}
seq_C[] = {cx0, cy0, cx1, cy1}
Subrotina que determina para cada ponto de P o ponto de C mais próximo e guarda o índice no vetor seq_Out
*/


// distancia = sqrt((x2-x1)^2+(y2-y1)^2)


// (1) valor de N (do tipo unsigned word)    - W0
// (2) endereço-base de seq_P                - X1
// (3) valor de M (do tipo unsigned word)    - W2
// (4) endereço-base de seq_C                - X3
// (5) endereço-base de seq_Out              - X4


eStep:				MOV X10, #0
					MOV W27, W2						// W27 = W2; W27 é alterável e W2 não
					SCVTF D28, X10					// D28 = 0.0
percorre_seqP:		MOV W5, #0						// W5 = ordem de seq_C
					CBZ W0, fim						// se seq_P acabar, ir para o fim
					SUB W0, W0, #1
					LDR S14, [X1]					// fazer load de Px0 e Py0
					FCVT D20, S14
					ADD X1, X1, #4
					LDR S15, [X1]
					FCVT D21, S15
					ADD X1, X1, #4
seq_C:				CBZ W27, proximo				// se seq_C acabar, ir ao próximo ponto
					SUB W27, W27, #1
					LDR D22, [X3]
					ADD X3, X3, #4					// pensava que aqui era ADD X3, X3, #8, mas está a funcionar melhor com o 4
					LDR	D23, [X3]
					ADD X3, X3, #4
					FSUB D24, D22, D20				// D24 = Cx0-Px0
					FSUB D25, D23, D21				// D25 = Cy0-Py0
					FMUL D24, D24, D24				// D24 = (Cx0-Px0)^2
					FMUL D25, D25, D25				// D25 = (Cy0-Py0)^2
					FADD D25, D24, D25				// D25 = (Cx0-Px0)^2 + (Cy0-Py0)^2
					FSQRT D25, D25					// D25 = sqrt( (Cx0-Px0)^2 + (Cy0-Py0)^2 )
					CBZ W5, menor
					FCMP D25, D19
					B.LT menor
continuar:			FMOV D24, D28
					FMOV D25, D28
					ADD W5, W5, #1
					B seq_C
menor:				FMOV D19, D25
					MOV W6, W5
					B continuar
proximo:			//STR D19, [X4]
					STR W6, [X4]
					ADD X4, X4, #4
					//MOV X12, #4
					//MUL X13, X27, X12
					//ADD X3, X3, X13
					MOV W27, W2
					B percorre_seqP
fim:				RET
