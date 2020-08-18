.text
.global experiencias
.type experiencias, "function"


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


experiencias:		MOV X26, #20
					SCVTF D19, X26
					LDR S14, [X1]					// fazer load de Px0 e Py0
					//ADD X1, X1, #8
					FCVT D20, S14
					ADD X1, X1, #4
					LDR S15, [X1]
					FCVT D21, S15
					ADD X1, X1, #4
					//ADD X3, X3, #16
					LDR D22, [X3]
					ADD X3, X3, #8
					LDR	D23, [X3]
					ADD X3, X3, #8
					FSUB D24, D22, D20				// D24 = Cx0-Px0
					FSUB D25, D23, D21				// D25 = Cy0-Py0
					FMUL D24, D24, D24				// D24 = (Cx0-Px0)^2
					FMUL D25, D25, D25				// D25 = (Cy0-Py0)^2
					FADD D25, D24, D25				// D25 = (Cx0-Px0)^2 + (Cy0-Py0)^2
					FSQRT D25, D25					// D25 = sqrt( (Cx0-Px0)^2 + (Cy0-Py0)^2 )
					FCMP D25, D19
					B.LT menor
					FMOV D0, D19
					RET
menor:				FMOV D0, D25
					RET

























					/*
experiencias:		UBFX W2, W0, 8, 24
					BFI W2, W0, 24, 7
					MOV X0, X2
					RET
*/
