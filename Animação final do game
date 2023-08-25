programa
  {
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro coluna_inicial = 0
		inteiro passos = 10//23
		
		animar(coluna_inicial, passos)
	}
     
	funcao animar(inteiro coluna_inicial, inteiro passos)
	{
		inteiro coluna_final = coluna_inicial + passos
		
		para (inteiro coluna = coluna_inicial; coluna < coluna_final; coluna++)
		{
			para (inteiro andando = 0; andando <= 1; andando++)
			{
				limpa()
				desenhar_pato(coluna, andando)
				u.aguarde(500)
			}
		}

		limpa()
		desenhar_pato(coluna_final, 0)
	}
     //movimentaçao
	funcao desenhar_pato(inteiro coluna, inteiro andando)
	{
		escreva("\n")
		se (andando == 0)
		{
			branco_coluna_cima((coluna * 3) + 7)
			escreva(" (.)>   (.)>   (.)>   (.)>\n")
			branco_coluna_baixo((coluna * 3) + 5)
			escreva("..\\___)..\\___)..\\___)..\\___).")
		} 
		senao
		{
			branco_coluna_cima((coluna * 3) + 6)
			branco_coluna_cima(4)
			escreva("(.)>   (.)>   (.)>   (.)>\n")
			branco_coluna_baixo((coluna * 3) + 6)
			escreva("..\\___)..\\___)..\\___)..\\___).")
		}
		escreva("\n")
		final()
	}
     //pula espaços no inicio
	funcao branco_coluna_baixo(inteiro quantidade)
	{
		inteiro brancos = 1
		enquanto (brancos <= quantidade)
		{
			escreva(".")
			brancos++
		}
	}
	funcao branco_coluna_cima(inteiro quantidade)
	{
		inteiro brancos = 1
		enquanto (brancos <= quantidade)
		{
			escreva(" ")
			brancos++
		}
	}
	funcao final(){
		escreva(" ┌┬┐┬ ┬┬┌┬┐┌─┐ ┌─┐┌┐ ┬─┐┬┌─┐┌─┐┬┐┌─┐ ┌─┐┌─┐┬─┐ ┌┬┐┌─┐┬─┐  ┬┌─┐┌─┐┌─┐┬┐┌─┐\n")  
          escreva(" ││││ ││ │ │ │ │ │├┴┐├┬┘││ ┬├─┤│││ │ ├─┘│ │├┬┘  │ ├┤ ├┬┘  ││ ││ ┬├─┤│││ │\n")
          escreva(" ┴ ┴└─┘┴ ┴ └─┘ └─┘└─┘┴└─┴└─┘┴ ┴┴┘└─┘ ┴  └─┘┴└─  ┴ └─┘┴└─ └┘└─┘└─┘┴ ┴┴┘└─┘")
	}
}
