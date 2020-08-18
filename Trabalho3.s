.text
.global Calculator
.type Calculator, "function"

	/*Pretende-se implementar uma sub-rotina que aceita três sequências,
	 seq_A, seq_B e seq_OP, com igual número (N) de elementos. As sequências
	 seq_A e seq_B são compostas por N elementos inteiros enquanto que
	 seq_OP é um vetor de carateres que define operações. Para cada elemento
	 i (0 <= i < N) das sequências, seq_OP[i] define a operação a realizar
	 entre seq_A[i] e seq_B[i]. As operações a realizar são a adição ('+'),
	 subtração ('-'), multiplicação ('*') e potência AB ('P'), com deteção
	 de overflow. Para a operação de potência, assumir que o valor de B é
	 maior ou igual a 0. Enquanto não ocorrer overflow, o resultado de cada
	 operação deve ser armazenado na posição correspondentes de seq_A. Caso
	 ocorra overflow, a sub-rotina deve terminar sem processar mais operações
	 e retornar o número de ordem (entre 1 e N) da operação em que ocorre
	 overflow. A sub-rotina deve devolver o valor inteiro 0 no caso de ter
	 realizado todas as operações sem ocorrência de overflow.

	Notas importantes:
	.As operações de adição, subtração e multiplicação devem ser feitas nesta
	sub-rotina.
	.Para realizar a operação de potência deve invocar, com os devidos cuidados
	relativos ao uso de registos, a sub-rotina a seguir declarada:
	.extern int power(int base, int exp)
	.Esta sub-rotina calcula o valor da potência e verifica a ocorrência de
	overflow. Caso ocorra overflow a sub-rotina retorna o valor 0; caso não
	ocorra overflow devolve o valor da potência (é sempre diferente de 0).

	A sub-rotina a implementar deve ter o nome Calculator e aceitar os seguintes
	argumentos pela ordem indicada:
	(1) unsigned int N              -> W0 - W19
	(2) endereço base de seq_OP     -> X1 - W4 (alterável) e X20 (não alterável)
	(3) endereço base de seq_B      -> X2 - W5
	(4) endereço base de seq_A      -> X3 - W6
		    	número de ordem     -> W7
	*/

	/*
	Obs:
	Para efeitos de teste, precisam de desenvolver uma sub-rotina para cálculo
	da potência, em conformidade com a especificação dada anteriormente. No
	entanto, esta sub-rotina não deverá ser submetida.
	*/



Calculator:			MOV W7, #0							// resposta a zero
					MOV W19, W0							// cópia do tamanho dos vetores (para deixar X0 livre)
					MOV X20, X1							// cópia do vetor para que X1 fique livre
					STP X29, X30, [SP, #-16]!			// preservar X29 e X30
					MOV X29, SP
ciclo:				CBZ W19, solucao					// se o vetor acabar, salta para a solução
					LDR W4, [X20]						// W4 = valor correspondente de X20
					LDR W5, [X2]						// W5 = valor correspondente de X2
					LDR W6, [X3]						// W6 = valor correspondente de X3
					CMP W4, 'P'
					B.EQ potencia						// se for para calcular a potência, salta para 'potencia'
					CMP W4, '+'
					B.EQ soma							// se for para somar, salta para 'soma'
					CMP W4, '-'
					B.EQ subtracao						// se for para subtrair, salta para 'subtracao'
					CMP W4, '*'
					B.EQ multiplicacao					// se for para multiplicar, salta para 'multiplicacao'
continuar:			ADD X20, X20, #4					// avançar um elemento no vetor X20
					ADD X2, X2, #4						// avançar um elemento no vetor X2
					ADD X3, X3, #4						// avançar um elemento no vetor X3
					SUB W19, W19, #1					// decrementar 1 ao tamanho dos vetores
					ADD W7, W7, #1						// adicionar 1 a W7 (ordem em que estamos)
					B ciclo								// continua o ciclo
potencia:			MOV W0, W6							// passar para X0 o registo que power recebe em X0
					MOV W1, W5							// passar para X1 o registo que power recebe em X1
					BL power							// salta para a subrotina que calcula a potência
					CBZ X0, overf						// se a subrotina devolver '0' significa que houve overflow
					STR W0, [X3]						// se não houver overflow, armazena na ordem atual o valor da subtração no vetor X3
					B continuar							// vai para o final deste ciclo
soma:				ADDS W21, W5, W6					// soma os valores dos vetores X2 e X3 - colocar o S para alterar as flags
					B.VS overf							// se houver overflow, mete-se a ordem
					STR W21, [X3]						// se não, armazena na ordem atual o valor da soma no vetor X3
					B continuar							// continua para o fim deste ciclo
subtracao:			SUBS W21, W5, W6					// subtrai os valores dos vetores X2 e X3 - colocar o S para alterar as flags
					B.VS overf							// se houver overflow, mete-se a ordem
					STR W21, [X3]						// se não, armazena na ordem atual o valor da subtração no vetor X3
					B continuar							// continua para o fim deste ciclo
multiplicacao:		SMULL X21, W5, W6					// multiplica os valores dos vetores X2 e X3 e pode ser colocado em registos diferentes dos multiplicados
					ASR X11, X21, #31					// o resultado da multiplicação leva um shift de metade do registo, mostrando apenas o sinal
					CMP X11, #0							// compara com 0 (no caso de ser positivo)
					B.EQ not_overf 						// se for positivo, salta para 'not_overflow'
					CMP X11, #-1						// se não compara com -1 (no caso de ser negativo)
					B.EQ not_overf						// se for negativo, salta para 'not_overflow'
overf:				MOV X0, X7							// se não for nem negativo, nem positivo, então há overflow - coloca a ordem atual em X0
					LDP X29, X30, [SP], #16				// restaura o X29 e o X30
					RET
not_overf:			STR W21, [X3]						// se não houver overflow, armazena na ordem atual o valor da subtração no vetor X3
					B continuar							// cotinua para o fim deste ciclo
solucao:			LDP X29, X30, [SP], #16				// restaura o X29 e o X30
					RET






// subrotina que não é preciso colocar

power:		mov X2, #1
			mov X3, #0
loop:		cbz W1, result
			sub W1, W1, #1
			smull X2, W2, W0
			asr X3, X2, #31
			cmp X3, #0
			b.eq loop
			cmp X3, #-1
			b.eq loop
			b overflow
overflow:	mov W0, #0
			ret
result:		mov W0, W2
			ret


// subrotina usada para testar
/*
power:		MOV X2, #1
.L1:		CBZ W1, .L2
			SMULL X2, X2, W0
			ASR X3, X2, #31
			CBZ X3, .GO
			CMP X3, #-1
			BEQ .GO
			MOV X2, #0
			B .L2
.GO:		SUB W1, W1, #1
			B .L1
.L2:		MOV X0, X2
			LDR X1, =cincos
			LDR X9, [X1]
			LDR X10, [X1]
			LDR X11, [X1]
			LDR X12, [X1]
			LDR X13, [X1]
			LDR X14, [X1]
			LDR X15, [X1]
			RET
*/
