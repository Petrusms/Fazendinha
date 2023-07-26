programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica

	//números de performance do jogo
	inteiro numeroDias = 0
	inteiro opcao
	inteiro dinheiro = 0
	inteiro quantidade
					

     //Animais e preços
	inteiro vaca = 2
     real valor_vaca = 1900.0
     inteiro touro = 0
     real valor_touro = 15000.0
     inteiro jegue = 0
     real valor_jegue = 0.0
     inteiro jumenta = 0
     real valor_jumenta = 0.0

     //Alimentos e preços
     inteiro leite = 0
     real valor_leite = 0.0
     inteiro carne_de_gato
     real valor__carne_de_gato = 0.0
     inteiro carne_de_cachorro
     real valor__carne_de_cachorro = 0.0
     inteiro carne_de_boi
     real valor__carne_de_boi = 0.0
     inteiro verduras
     real valor_verduras = 0.0
     inteiro frutas
     real valor_frutas = 0.0
     inteiro cereais
     real valor_cereais = 0.0
     inteiro agua
     real valor_agua = 0.0
     inteiro suco
     real valor_suco = 0.0
     //Rações
     inteiro racao_barata
     real valor__racao_barata = 0.0
     inteiro racao_media 
     real valor__racao_media = 0.0
     inteiro racao_cara
     real valor__racao_cara = 0.0

     //Produção
     inteiro time_leite = 0
	
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

			time_leite = 0
				
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
				u.aguarde(3000)
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
					MercadoAnimais()
				pare

				caso 2: //add
					Animais()
				
			}//escolha açoes do dia
										
		}//para
	
	} // fim da funcao comercarJogo

	funcao Mercado(){
					escreva("************************************************************* \n")
					escreva("**                                                         ** \n")
					escreva("**              Escolha o que deseja comprar               ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    1_ Animais                           ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    2_ Alimento                          ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    3_ Sementes                          ** \n")
					escreva("**                                                         ** \n")
					escreva("************************************************************* \n")
					leia(opcao)
					
					escolha(opcao){
						caso 1:
							 MercadoAnimais()
						pare
						caso 2:
						pare
						caso 3:
						pare
					}
	}

	funcao MercadoAnimais(){
					escreva("************************************************************* \n")
					escreva("**                                                         ** \n")
					escreva("**             Escolha um animal para comprar:             ** \n")
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
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
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
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
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
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
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
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
										pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
						pare
							}//fim escolha compra
				}// fim da escolha animal
	} //fim da funcao MercadoAnimais

	funcao MercadoAllimento(){

					escreva("************************************************************* \n")
					escreva("**                                                         ** \n")
					escreva("**           Escolha um alimentol para comprar:            ** \n")
					escreva("**                                                         ** \n")
					escreva("**                 1_ Carne de Gato                        ** \n")
					escreva("**                                                         ** \n")
					escreva("**                2_ Carne de Cachorro                     ** \n")
					escreva("**                                                         ** \n")
					escreva("**                  3_ Carne de Boi                        ** \n")
					escreva("**                                                         ** \n")
					escreva("**                    4_ Verduras                          ** \n")
					escreva("**                                                         ** \n")
					escreva("**                     5_ Frutas                           ** \n")
					escreva("**                                                         ** \n")
					escreva("**                     6_ Cereais                          ** \n")
					escreva("**                                                         ** \n")
					escreva("**                      7_ Água                            ** \n")
					escreva("**                                                         ** \n")
					escreva("**                     8_ Leite                            ** \n")
					escreva("**                                                         ** \n")
					escreva("**                      9_ Suco                            ** \n")
					escreva("**                                                         ** \n")
					escreva("**               10_ Ração Barata (3 Dias)                 ** \n")
					escreva("**                                                         ** \n")
					escreva("**                11_ Ração Média (5 Dias)                 ** \n")
					escreva("**                                                         ** \n")
					escreva("**                 12_ Ração Cara (7 Dias)                 ** \n")
					escreva("**                                                         ** \n")
					escreva("************************************************************* \n")
					leia(opcao)

					escolha(opcao){
						caso 1:
							escreva("Quantas Carnes de Gato você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor__carne_de_gato)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor__carne_de_gato <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")	
										u.aguarde(2000)														
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 2:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor__carne_de_cachorro)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor__carne_de_cachorro <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")	
										u.aguarde(2000)														
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 3:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor__carne_de_boi)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor__carne_de_boi <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")	
										u.aguarde(2000)														
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 4:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_verduras)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_verduras <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")	
										u.aguarde(2000)														
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 5:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_frutas)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_frutas <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 6:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_cereais)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_cereais <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 7:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade *valor_agua)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_agua <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 8:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_leite)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_leite <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")	
										u.aguarde(2000)														
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 9:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor_suco)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor_suco <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 10:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor__racao_barata)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor__racao_barata <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")
										u.aguarde(2000)															
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 11:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor__racao_media)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor__racao_media <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")	
										u.aguarde(2000)														
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra
						caso 12:
							escreva("Quantos animais você deseja comprar? \n")
							leia(quantidade)
							escreva("Compra reultará em: ", quantidade * valor__racao_cara)
							escreva("\n Deseja comprar? \n")
							escreva("1_  sim \n")
							escreva("2_  não \n")
							leia(opcao)
							
							escolha(opcao){
								caso 1:
									se(quantidade * valor__racao_cara <= dinheiro){
										limpa()
										escreva("Compra realizada com sucesso!")	
										u.aguarde(2000)														
									}
									senao{
										limpa()
										escreva("Compra negada")
										u.aguarde(2000)
									}
								pare
								caso 2:
									limpa()
									escreva("Compra negada")
									u.aguarde(2000)
								pare
							}//fim escolha compra					
					}//escolha alimentos
	}//fim mercado alimento

	funcao MercadoSemente(){
		
	}//funcao mercado alimento

		funcao Animais(){
				limpa()
				escreva("************************************************************* \n")
				escreva("**                                                         ** \n")
				escreva("** Qual animal deseja administrar ** \n")
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
									se(time_leite <= 0){
										leite = leite + vaca
										time_leite++
										escreva("Leite tirado com sucesso!")
										u.aguarde(2000)
									}
									senao{
										escreva("Já tirou leite de todas as vacas!")
										u.aguarde(2000)
									}
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
