.text
.global CheckRange
.type CheckRange, "function"

	/*Escrever uma sub-rotina que, para um dado valor positivo (o limiar),
	substitui os elementos de uma sequ�ncia que n�o pertencem ao intervalo
	[-limiar;+limiar] pelo valor do extremo do intervalo mais pr�ximo desses
	elementos e devolve o n�mero de elementos modificados. Os elementos da
	sequ�ncia s�o do tipo signed word - 32bits - W - de -(2^31) a (2^31 -1).*/

/*W0 - limiar - unsigned word    - 32 bits - W - de 0 a (2^32 - 1)
W1 - tamanho - unsigned word
X2 - sequ�ncia - vector - signed word*/

CheckRange:		MOV W7, #0				// resposta est� a zero
ciclo:			LDR W6, [X2]			// faz load do valor de elemento do vetor
				CBZ W1, fim				// se o tamanho for 0 salta para o fim
				SUB W1, W1, #1
				NEG W5, W0				// W5 � o limiar negativo
				CMP W6, W5				// compara o elemento do vetor com o limite negativo
				B.LT excecao_menor		// se for menor salta para excecao_menor
				CMP W6, W0				// se n�o for, compara o elemento com o limite positivo
				B.GT excecao_maior		// se for maior salta para excecao_maior
				ADD X2, X2, #4
				B ciclo					// se pertencer ao intervalo passa para o pr�ximo elemento do vetor e continua o ciclo
excecao_menor:	ADD W7, W7, #1			// adiciona 1 � resposta
				STR W5, [X2]			// altera o valor que est� no vetor para o limite negativo
				ADD X2, X2, #4
				B ciclo					// passa para o pr�ximo valor do vetor e continua o ciclo
excecao_maior:	ADD W7, W7, #1			// adiciona 1 � resposta
				STR W0, [X2]			// altera o valor do vetor para o limite positivo
				ADD X2, X2, #4
				B ciclo					// passa para o pr�ximo valor do vetor e continua o ciclo
fim:			MOV W0, W7
				RET

			/*	W7 - resposta
				W6 - valor do vetor
				W5 - limiar negativo
				X2 - vetor
				W1 - tamanho
				W0 - limiar positivo*/
