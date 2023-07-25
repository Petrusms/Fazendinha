programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica

	//números de performance do jogo
	inteiro numeroDias = 0
	inteiro opcao
	inteiro dinheiro = 0

     //Animais e preços
	inteiro vaca = 2
     inteiro valor_vaca = 1900
     inteiro touro = 0
     inteiro valor_touro = 15000
     inteiro jegue = 0
     inteiro valor_jegue = 0
     inteiro jumenta = 0
     inteiro valor_jumenta = 0

     //Alimentos e preços
	
	funcao inicio()
	{
	    
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
		
		para(numeroDias = numeroDias; numeroDias <= 100; numeroDias++){
				
			se (numeroDias == 0 ){
				limpa()
				escreva("A história começa no começo dos anos 40, quando a Segunda Guerra Mundial começou.")
				u.aguarde(4500)
				limpa()
				escreva("Você é apenas um fazendeiro, tentando ganhar dinheiro com sua fazenda, já que a situação do mundo não ajuda em sua condição financeira.")
				u.aguarde(8000)
				limpa()
				escreva("Atualmente, você tem tentado fazer dinheiro vendendo leite de cabra e vaca, ovos e carne...")
				u.aguarde(5000)
				limpa()
				escreva("Porém, os seus animais ficam doentes muito facilmente e por causa disso, muitos deles morrem. O que você irá fazer pra acabar com esse problema?")
				u.aguarde(8000)
				limpa()
				escreva("Boa Sorte!")
				u.aguarde(8000)
				limpa()
				
			}//se
			
			escreva("************************************************************* \n")
			escreva("**                                                         ** \n")
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
				caso 1:
					Mercado()
				pare

				caso 2: //add
					Animais()
				
			}//escolha açoes do dia
										
		}//para
	
	} // fim da funcao comercarJogo

	funcao Mercado(){
					inteiro quantidade
					
					escreva("************************************************************* \n")
					escreva("**                                                         ** \n")
					escreva("**             Escolha um animal para cmprar:              ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    1_ Vaca                              ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    2_ Touro                             ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    3_ Jegue                             ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    4_ Jumenta                           ** \n")
					escreva("**                                                         ** \n")
					escreva("************************************************************* \n")
					
					leia(opcao)
					escolha(opcao){
						caso 1:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_vaca)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_vaca <= dinheiro){
										escreva("Compra realizada com sucesso!")															
									}
									senao{
										escreva("Compra negada")
									}
								pare
								caso 2:
									escreva("Compra negada")
								pare
							}//fim escolha compra
						pare
						caso 2:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_touro)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_touro <= dinheiro){
										escreva("Compra realizada com sucesso!")															
									}
									senao{
										escreva("Compra negada")
									}
								pare
								caso 2:
									escreva("Compra negada")
								pare
							}//fim escolha compra
						pare
						caso 3:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_jegue)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_jegue <= dinheiro){
										escreva("Compra realizada com sucesso!")															
									}
									senao{
										escreva("Compra negada")
									}
								pare
								caso 2:
									escreva("Compra negada")
								pare
							}//fim escolha compra
						pare
						caso 4:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_jumenta)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_jumenta <= dinheiro){
										escreva("Compra realizada com sucesso!")															
									}
									senao{
										escreva("Compra negada")
									}
										pare
								caso 2:
									escreva("Compra negada")
						pare
							}//fim escolha compra
				}// fim da escolha animal
	} //fim da funcao Mercado

		funcao Animais(){
				limpa()
				escreva("************************************************************* \n")
				escreva("**                                                         ** \n")
				escreva("** Qual animal deseja *operar(mudar este nome futuramente) ** \n")
				escreva("**                                                         ** \n")
				escreva("**                   Escolha uma opção:                    ** \n")
				escreva("**                                                         ** \n")
				escreva("**                    1_ Vaca                              ** \n")
				escreva("**                                                         ** \n")
				escreva("**                    2_ Touro                             ** \n")
				escreva("**                                                         ** \n")
				escreva("**                    3_ Jegue                             ** \n")
				escreva("**                                                         ** \n")
				escreva("**                    4_ Jumenta                           ** \n")
				escreva("**                                                         ** \n")
				escreva("************************************************************* \n")
				leia(opcao)
				
				escolha(opcao){
						caso 1:
							limpa()
							escreva("************************************************************* \n")
							escreva("**                                                         ** \n")
							escreva("**                          Vaca                           ** \n")
							escreva("**                                                         ** \n")
							escreva("**                   Escolha uma opção:                    ** \n")
							escreva("**                                                         ** \n")
							escreva("**                      1_ Alimentar                       ** \n")
							escreva("**                                                         ** \n")
							escreva("**                     2_ Tirar leite                      ** \n")
							escreva("**                                                         ** \n")
							escreva("**                       3_ Vacinar                        ** \n")
							escreva("**                                                         ** \n")
							escreva("************************************************************* \n")
							leia(opcao)

							escolha(opcao){
								caso 1:
								pare
								caso 2:
								pare
								caso 3:
								pare
							}// escolha vaca
						pare
						caso 2:
							limpa()
							escreva("************************************************************* \n")
							escreva("**                                                         ** \n")
							escreva("**                         Touro                           ** \n")
							escreva("**                                                         ** \n")
							escreva("**                   Escolha uma opção:                    ** \n")
							escreva("**                                                         ** \n")
							escreva("**                      1_ Alimentar                       ** \n")
							escreva("**                                                         ** \n")
							escreva("**                       2_ Castrar                        ** \n")
							escreva("**                                                         ** \n")
							escreva("**                       3_ Vacinar                        ** \n")
							escreva("**                                                         ** \n")
							escreva("************************************************************* \n")
							leia(opcao)

							escolha(opcao){
								caso 1:
								pare
								caso 2:
								pare
								caso 3:
								pare
							}//escolha touro
						pare
						caso 3:
							limpa()
							escreva("************************************************************* \n")
							escreva("**                                                         ** \n")
							escreva("**                         Jegue                           ** \n")
							escreva("**                                                         ** \n")
							escreva("**                   Escolha uma opção:                    ** \n")
							escreva("**                                                         ** \n")
							escreva("**                      1_ Alimentar                       ** \n")
							escreva("**                                                         ** \n")
							escreva("**                        2_ Montar                        ** \n")
							escreva("**                                                         ** \n")
							escreva("**                       3_ Vacinar                        ** \n")
							escreva("**                                                         ** \n")
							escreva("************************************************************* \n")
							leia(opcao)

							escolha(opcao){
								caso 1:
								pare
								caso 2:
								pare
								caso 3:
								pare
							}//escolha jegue
						pare
						caso 4:
							limpa()
							escreva("************************************************************* \n")
							escreva("**                                                         ** \n")
							escreva("**                        Jumenta                          ** \n")
							escreva("**                                                         ** \n")
							escreva("**                   Escolha uma opção:                    ** \n")
							escreva("**                                                         ** \n")
							escreva("**                      1_ Alimentar                       ** \n")
							escreva("**                                                         ** \n")
							escreva("**                        2_ Montar                        ** \n")
							escreva("**                                                         ** \n")
							escreva("**                     3_ Tirar leite                      ** \n")
							escreva("**                                                         ** \n")
							escreva("**                       4_ Vacinar                        ** \n")
							escreva("**                                                         ** \n")
							escreva("************************************************************* \n")
							leia(opcao)

							escolha(opcao){
								caso 1:
								pare
								caso 2:
								pare
								caso 3:
								pare
								caso 4:
								pare
							}//escolha jumenta
						pare
					
					}//*operar(mudar este nome futuramente) animais
		}//funcao Animais
//programa 
}
