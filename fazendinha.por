programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u
	inclua biblioteca Matematica

	//números de performance do jogo
	inteiro numeroDias = 0
	cadeia opcao = "0"
	inteiro opcaoInt
	real dinheiro = 0.0
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
     inteiro carne_de_gato = 0
     real valor__carne_de_gato = 0.0
     inteiro carne_de_cachorro = 0
     real valor__carne_de_cachorro = 0.0
     inteiro carne_de_boi = 0
     real valor__carne_de_boi = 0.0
     inteiro verduras = 0
     real valor_verduras = 0.0
     inteiro frutas = 0
     real valor_frutas = 0.0
     inteiro cereais = 0
     real valor_cereais = 0.0
     inteiro agua = 0
     real valor_agua = 0.0
     inteiro suco = 0
     real valor_suco = 0.0
     //Rações
     inteiro racao_barata = 0
     real valor__racao_barata = 0.0
     inteiro racao_media  = 0
     real valor__racao_media = 0.0
     inteiro racao_cara = 0
     real valor__racao_cara = 0.0

     //Produção
     inteiro time_leite = 0
	
	funcao inicio(){
	    
	     inteiro comecar_jogo = 0
	     inteiro sair_voltar = 0
	      
	     enquanto(opcao != "1" ou opcao != "2"){
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

			se(opcao == "1" ou opcao == "2"){
				opcaoInt = t.cadeia_para_inteiro(opcao, 10)
				pare
			}
			senao{
				escreva("Valor informado está errado!\n")
				u.aguarde(1000)
			}
	     }

		escolha(opcaoInt){
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
			 enquanto(opcao != "1" ou opcao != "2"){
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

				
				se(opcao == "1" ou opcao == "2"){
						opcaoInt = t.cadeia_para_inteiro(opcao, 10)
						pare
					}
					senao{
						escreva("Valor informado está errado!\n")
					}
			 }
			escolha(opcaoInt){
				caso 1:
					MercadoAnimais()
				pare

				caso 2: //add
					Animais()
				pare
				
			}//escolha açoes do dia
										
		}//para
	
	} // fim da funcao comercarJogo

	funcao Mercado(){
					enquanto(opcao != "1" ou opcao != "2" ou opcao != "3"){
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

						se(opcao == "1" ou opcao == "2"  ou opcao == "3"){
							opcaoInt = t.cadeia_para_inteiro(opcao, 10)
							pare
						}
						senao{
							escreva("Valor informado está errado!\n")
						}
				 }

					escolha(opcaoInt){
						caso 1:
							 MercadoAnimais()
						pare
						caso 2:
							MercadoAlimento()
						pare
						caso 3:
							MercadoSemente()
						pare
					}//escolha mercado
	}//funcao Mercado

	funcao MercadoAnimais(){
					enquanto(opcao != "1" ou opcao != "2" ou opcao != "3" ou opcao != "4"){
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

						se(opcao == "1" ou opcao == "2"  ou opcao == "3"  ou opcao == "4"){
								opcaoInt = t.cadeia_para_inteiro(opcao, 10)
								pare
							}
							senao{
								escreva("Valor informado está errado!\n")
							}
					 }
					
					escolha(opcaoInt){
						caso 1:
							AbreviarMercado(valor_vaca, vaca)
						pare
						
						caso 2:
							AbreviarMercado(valor_touro, touro)
						pare
						
						caso 3:
							AbreviarMercado(valor_jegue, jegue)
						pare
												
						caso 4:
							AbreviarMercado(valor_jumenta, jumenta)
						pare
					}// fim da escolha animal
	} //fim da funcao MercadoAnimais

	funcao MercadoAlimento(){
					enquanto(opcao != "1" ou opcao != "2" ou opcao != "3" ou opcao != "4" ou opcao != "5" ou opcao != "6" ou opcao != "7" ou opcao != "8" ou opcao != "9" ou opcao != "10" ou opcao != "11" ou opcao != "12"){
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
						
						se(opcao == "1" ou opcao == "2" ou opcao == "3" ou opcao == "4" ou opcao == "5" ou opcao == "6" ou opcao == "7" ou opcao == "8" ou opcao == "9" ou opcao == "10" ou opcao == "11" ou opcao == "12"){
							opcaoInt = t.cadeia_para_inteiro(opcao, 10)
						}
						senao{
							escreva("Valor informado está errado!\n")
						}
					}

					escolha(opcaoInt){
						caso 1:
							AbreviarMercado(valor__carne_de_gato, carne_de_gato)
						pare
						
						caso 2:
							AbreviarMercado(valor__carne_de_cachorro, carne_de_cachorro)
						pare
						
						caso 3:
							AbreviarMercado(valor__carne_de_boi, carne_de_boi)
						pare
						
						caso 4:
							AbreviarMercado(valor_verduras, verduras)
						pare
						
						caso 5:
							AbreviarMercado(valor_frutas, frutas)
						pare
						
						caso 7:
							AbreviarMercado(valor_agua, agua)
						pare
						
						caso 8:
							AbreviarMercado(valor_leite, leite)
						pare
						
						caso 9:
							AbreviarMercado(valor_suco, suco)
						pare
						
						
						caso 10:
							AbreviarMercado(valor__racao_barata, racao_barata)
						pare
						
						caso 11:
							AbreviarMercado(valor__racao_media, racao_media)
						pare
						
						
						caso 12:
							AbreviarMercado(valor__racao_cara, racao_cara)
						pare					
					}//escolha alimentos
	}//fim mercado alimento

	funcao MercadoSemente(){
		
	}//funcao mercado alimento

	funcao Venda(){
		enquanto(opcao != "1" ou opcao != "2" ou opcao != "3"){
						escreva("************************************************************* \n")
						escreva("**                                                         ** \n")
						escreva("**               Escolha o que deseja vender               ** \n")
						escreva("**                                                         ** \n")
						escreva("**                    1_ Animais                           ** \n")
						escreva("**                                                         ** \n")
						escreva("**                    2_ Alimento                          ** \n")
						escreva("**                                                         ** \n")
						escreva("**                    3_ Sementes                          ** \n")
						escreva("**                                                         ** \n")
						escreva("************************************************************* \n")
						leia(opcao)

						se(opcao == "1" ou opcao == "2"  ou opcao == "3"){
							opcaoInt = t.cadeia_para_inteiro(opcao, 10)
							pare
						}
						senao{
							escreva("Valor informado está errado!\n")
						}
				 }

					escolha(opcaoInt){
						caso 1:
							 VendaAnimais()
						pare
						caso 2:
							VendaAlimento()
						pare
						caso 3:
							VendaSemente()
						pare
					}
	}//funcao Venda

	funcao VendaAnimais(){

		enquanto(opcao != "1" ou opcao != "2" ou opcao != "3" ou opcao != "4"){
						escreva("************************************************************* \n")
						escreva("**                                                         ** \n")
						escreva("**             Escolha um animal para vender:              ** \n")
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

						se(opcao == "1" ou opcao == "2"  ou opcao == "3"  ou opcao == "4"){
								opcaoInt = t.cadeia_para_inteiro(opcao, 10)
								pare
							}
							senao{
								escreva("Valor informado está errado!\n")
							}
					 }
					
					escolha(opcaoInt){
						caso 1:
							AbreviarVenda(valor_vaca, vaca)
						pare
						
						caso 2:
							AbreviarVenda(valor_touro, touro)
						pare
						
						caso 3:
							AbreviarVenda(valor_jegue, jegue)
						pare
												
						caso 4:
							AbreviarVenda(valor_jumenta, jumenta)
						pare
					}// fim da escolha animal
		
	}//funcao VendaAnimais

	funcao VendaAlimento(){

		enquanto(opcao != "1" ou opcao != "2" ou opcao != "3" ou opcao != "4" ou opcao != "5" ou opcao != "6" ou opcao != "7" ou opcao != "8" ou opcao != "9" ou opcao != "10" ou opcao != "11" ou opcao != "12"){
						escreva("************************************************************* \n")
						escreva("**                                                         ** \n")
						escreva("**            Escolha um alimento para vender:             ** \n")
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
						
						se(opcao == "1" ou opcao == "2" ou opcao == "3" ou opcao == "4" ou opcao == "5" ou opcao == "6" ou opcao == "7" ou opcao == "8" ou opcao == "9" ou opcao == "10" ou opcao == "11" ou opcao == "12"){
							opcaoInt = t.cadeia_para_inteiro(opcao, 10)
						}
						senao{
							escreva("Valor informado está errado!\n")
						}
					}

					escolha(opcaoInt){
						caso 1:
							AbreviarVenda(valor__carne_de_gato, carne_de_gato)
						pare
						
						caso 2:
							AbreviarVenda(valor__carne_de_cachorro, carne_de_cachorro)
						pare
						
						caso 3:
							AbreviarVenda(valor__carne_de_boi, carne_de_boi)
						pare
						
						caso 4:
							AbreviarVenda(valor_verduras, verduras)
						pare
						
						caso 5:
							AbreviarVenda(valor_frutas, frutas)
						pare
						
						caso 7:
							AbreviarVenda(valor_agua, agua)
						pare
						
						caso 8:
							AbreviarVenda(valor_leite, leite)
						pare
						
						caso 9:
							AbreviarVenda(valor_suco, suco)
						pare
						
						
						caso 10:
							AbreviarVenda(valor__racao_barata, racao_barata)
						pare
						
						caso 11:
							AbreviarVenda(valor__racao_media, racao_media)
						pare
						
						
						caso 12:
							AbreviarVenda(valor__racao_cara, racao_cara)
						pare					
					}//escolha alimento
		
	}//funcao VendaAlimento

	funcao VendaSemente(){
		
	}//funcao VendaSemente

	funcao Animais(){
				enquanto(opcao != "1" ou opcao != "2" ou opcao != "3" ou opcao != "4"){
					limpa()
					escreva("************************************************************* \n")
					escreva("**                                                         ** \n")
					escreva("**             Qual animal deseja administrar              ** \n")
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
				
					se(opcao == "1" ou opcao == "2" ou opcao == "3" ou opcao == "4"){
						opcaoInt = t.cadeia_para_inteiro(opcao, 10)
						pare
					}
					senao{
						escreva("Valor informado está errado!\n")
					}
				}
				
				escolha(opcaoInt){
						caso 1:
							enquanto(opcao != "1" ou opcao != "2" ou opcao != "3"){
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
								
								se(opcao == "1" ou opcao == "2" ou opcao == "3"){
									opcaoInt = t.cadeia_para_inteiro(opcao, 10)
									pare
								}
								senao{
									escreva("Valor informado está errado!\n")
								}
							}

							escolha(opcaoInt){
								caso 1://add
								pare
								caso 2:
									se(time_leite <= 0){
										leite = leite + vaca
										time_leite++
										escreva("Leite tirado com sucesso!\n")
										u.aguarde(2000)
									}
									senao{
										escreva("Já tirou leite de todas as vacas!\nv")
										u.aguarde(2000)
									}
								pare
								caso 3://add
								pare
							}// escolha vaca
						pare
						caso 2:
							enquanto(opcao != "1" ou opcao != "2" ou opcao != "3"){
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
								
								se(opcao == "1" ou opcao == "2" ou opcao == "3"){
									opcaoInt = t.cadeia_para_inteiro(opcao, 10)
									pare
								}
								senao{
									escreva("Valor informado está errado!\n")
								}
							}
							escolha(opcaoInt){
								caso 1:
								pare
								caso 2:
								pare
								caso 3:
								pare
							}//escolha touro
						pare
						caso 3:
							enquanto(opcao != "1" ou opcao != "2" ou opcao != "3"){
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
								
								se(opcao == "1" ou opcao == "2" ou opcao == "3"){
									opcaoInt = t.cadeia_para_inteiro(opcao, 10)
									pare
								}
								senao{
									escreva("Valor informado está errado!\n")
								}
							}
							
							escolha(opcaoInt){
								caso 1:
								pare
								caso 2:
								pare
								caso 3:
								pare
							}//escolha jegue
						pare
						caso 4:
							enquanto(opcao != "1" ou opcao != "2" ou opcao != "3" ou opcao != "4"){
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
							
								se(opcao == "1" ou opcao == "2" ou opcao == "3" ou opcao == "4"){
									opcaoInt = t.cadeia_para_inteiro(opcao, 10)
									pare
								}
								senao{
									escreva("Valor informado está errado!\n")
								}
							}
								
							escolha(opcaoInt){
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
					
					}//administrar animais
		}//funcao Animais

	funcao AbreviarMercado(real x, inteiro y){

               escreva("Quantos animais você deseja comprar? \n")
			leia(quantidade)
			escreva("Compra reultará em: ", quantidade * x)
			escreva("\n Deseja comprar? \n")
			escreva("1_  sim \n")
			escreva("2_  não \n")
			leia(opcao)
			
			enquanto(opcao != "1" ou opcao != "2"){
				se(opcao == "1" ou opcao == "2"){
					opcaoInt = t.cadeia_para_inteiro(opcao, 10)
				pare
				}
				senao{
					escreva("Valor informado está errado!\n")
				}
			}
			
			
			escolha(opcaoInt){
				caso 1:
					se(quantidade * x <= dinheiro){
						limpa()
						y = y + quantidade
						dinheiro = dinheiro - (quantidade * x)
						escreva("Compra realizada com sucesso!\n")
						u.aguarde(2000)
					}
					senao{
						limpa()
						escreva("Compra negada\n")
						u.aguarde(2000)
					}
					pare
				caso 2:
					limpa()
					escreva("Compra negada\n")
					u.aguarde(2000)
					}//fim escolha compra
		
		}//funcao AbreviarMercado

	funcao AbreviarVenda(real x, inteiro y){

			escreva("Quantos animais você deseja vender? \n")
			leia(quantidade)
			escreva("Venda reultará em: ", quantidade * x)
			escreva("\n Deseja comprar? \n")
			escreva("1_  sim \n")
			escreva("2_  não \n")
			leia(opcao)
			
			enquanto(opcao != "1" ou opcao != "2"){
				se(opcao == "1" ou opcao == "2"){
					opcaoInt = t.cadeia_para_inteiro(opcao, 10)
				pare
				}
				senao{
					escreva("Valor informado está errado!\n")
				}
			}
			
			
			escolha(opcaoInt){
				caso 1:
					se(quantidade >= x){
						limpa()
						y = y - quantidade
						dinheiro = dinheiro + (quantidade * x)
						escreva("Venda realizada com sucesso!\n")
						u.aguarde(2000)
					}
					senao{
						limpa()
						escreva("Venda negada\n")
						u.aguarde(2000)
					}
					pare
				caso 2:
					limpa()
					escreva("Venda negada\n")
					u.aguarde(2000)
					}//fim escolha compra
		
		}//funcao AbreviarVenda
//programa 
}
