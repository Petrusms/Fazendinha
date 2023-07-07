programa
{
	inclua biblioteca Util
	inclua biblioteca Matematica

	inteiro numeroDias = 0
	
	funcao inicio()
	{
	     inteiro opcao
	     inteiro comecar_jogo = 0
	     inteiro sair_voltar = 0
	      
	     
		escreva("************************************************************* \n")
		escreva("**         Olá,  seja bem vindo ao nosso jogo!             ** \n")
		escreva("**                                                         ** \n")
		escreva("**                   Escolha uma opção:                    ** \n")
		escreva("**                                                         ** \n")
		escreva("**                    1_ Iniciar jogo                      ** \n")
		escreva("**                                                         ** \n")
		escreva("**                    2_ Sair/Voltar                       ** \n")
		escreva("**                                                         ** \n")
		escreva("************************************************************* \n")
		leia(opcao)

		escolha(opcao){
			caso  1:
			comercarJogo()
			pare
		}//escolha
		
		
	}// fim funcao incicio


	funcao comercarJogo(){

		inteiro opcao
	     inteiro dinheiro = 0
	     inteiro vaca = 2
	     inteiro valor_vaca
	     inteiro touro = 0
	     inteiro valor_touro
		
		para(numeroDias = numeroDias; numeroDias <= 100; numeroDias++){
				
			se (numeroDias == 0 ){
				escreva("Em nosso jogo, voçê escolhe as opções e define sua história em 100 dias ")
				limpa()
			}//se
			
			escreva("************************************************************* \n")
			escreva("**               O que deseja fazer hoje?                  ** \n")
			escreva("**                                                         ** \n")
			escreva("**                   Escolha uma opção:                    ** \n")
			escreva("**                                                         ** \n")
			escreva("**                    1_ Mercado                           ** \n")
			escreva("**                                                         ** \n")
			escreva("**                    2_ Animais                           ** \n")
			escreva("**                                                         ** \n")
			escreva("************************************************************* \n")
			
			leia(opcao)
			escolha(opcao){
				caso 1: //add
				pare

				caso 2: //add
				
			}//escolha
										
		}//para
	
	} // fim da funcao comercarJogo
	
//programa 
}
