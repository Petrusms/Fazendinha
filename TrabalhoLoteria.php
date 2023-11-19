<?php
    //Mega Senna
    const NumMaxMegaSenna = 20; 
    const NumMinMegaSenna = 6;  
    const NumMegaSenna = 60; 
    const NumSortMegaSenna = 6;
    //Quina
    const NumMaxQuina = 15; 
    const NumMinQuina = 5;
    const NumQuina = 80;
    const NumSortQuina = 5; 
    //Lotomania
    const NumMaxLotoMania = 50; 
    const NumMinLotoMania = 50;
    const NumLotoMania = 100; 
    const NumSortLotoMania = 50;
    //Lotofácil
    const NumMaxLotoFacil = 20;
    const NumMinLotoFacil = 15;
    const NumLotoFacil = 25; 
    const NumSortLotoFacil = 15; 

    $OpcAposta = 0; //Escolhe o número ou Aleatoriza
    $NumApostas = 0;//Quantas apostas você vai fazer
    $NumEscolhidosPorAposta = 0; //Quantos números por aposta você vai fazer
    //$Premio = "algo";

    //Estrutura de enfeite
    print("****************************\n");
    print("* Bem vindo a Loteria MiWe *\n");
    print("*                          *\n");
    print("*       1 Mega Sena        *\n");
    print("*       2 Quina            *\n");
    print("*       3 LotoMania        *\n");
    print("*       4 LotoFácil        *\n");
    print("*                          *\n");
    print("****************************\n");

    print("Qual jogo de aposta deseja escolher?\n");
    $jogoEscolhido = readline("");


    print("Você deseja: \n1 Escolher os seus números \nou \n2 Aleatorizar\n");
     $OpcAposta = readline("");

    while($OpcAposta < 1 or $OpcAposta > 2)
    {
        echo("O valor informado não é permitido.\n"); 
        echo("Você deseja: \n1 Escolher os seus números \nou \n2 Aleatorizar\n");
        $OpcAposta = readline("");
        break;
    }

    print("Quantas apostas você deseja fazer?\n");
    $quantaposta = readline("");

    switch ($jogoEscolhido) 
    {
        case 1:

            QualLoteria($OpcAposta, NumMinMegaSenna, NumMaxMegaSenna, NumMegaSenna, $quantaposta);

        break;

        case 2:   
     
            QualLoteria($OpcAposta, NumMinQuina, NumMaxQuina, NumQuina, $quantaposta);

        break;

        case 3: 
    
            QualLoteria($OpcAposta, NumMinLotoMania, NumMaxLotoMania, NumLotoMania, $quantaposta);

        break;

        case 4: 
    
           QualLoteria($OpcAposta, NumMinLotoFacil, NumMaxLotoFacil, NumLotoFacil, $quantaposta);  

        break;
    }


    function QualLoteria($OpcAposta, $NumMinLot, $NumMaxLot, $NumLot, $quantaposta)
    {
        switch($OpcAposta)
        {
            case 1:
                    
                    print("Quantos números você quer por na aposta? (entre " . $NumMinLot . " e " . $NumMaxLot . ")\n");
                    $NumEscPorAposta = readline("");

                    while ($NumEscPorAposta < $NumMinLot || $NumEscPorAposta > $NumMaxLot) 
                    {
                        echo "O valor informado não é permitido, repita novamente.\nDigite um número entre $NumMinLot e $NumMaxLot.\n";
                        $NumEscPorAposta = intval(trim(fgets(STDIN)));
                    }

                    for($i=1 ; $i < $quantaposta +1; $i++)
                    {
                        $contador = 0;
                        $NumEscolhidos = array();
                        while($contador < $NumEscPorAposta)
                        {
                            print("Escolha os $NumEscPorAposta números de 1 a $NumLot da $i ° aposta, separados por virgula e sem repitilos. (não esqueça de anotar)\n");
                            $NumEscolhidos = readline("");
                            $NumEscolhidos = explode(",", $NumEscolhidos);
                            $NumEscolhidos = array_map('trim', $NumEscolhidos);
                            $NumEscolhidos = array_map('intval', $NumEscolhidos);
                            // Verifica se existem números repetidos
                            $verificacao = array_unique(array_diff_assoc($NumEscolhidos, array_unique($NumEscolhidos)));
                            //Se houver números repetidos, pede novamente os números
                            if(!empty($verificacao))
                            {
                                print("Existe números repitidos na sua aposta! Repita novamante os números sem repitir.\n");
                            }
                            else
                            {
                                sort($NumEscolhidos);
                                print("Seus números escolhidos são: ");
                                print(implode(", ", $NumEscolhidos,));
                                echo"\n";
                                $contador = $contador+$NumEscolhidos[$NumEscPorAposta-1]; 
                            }
                             
                        }
                    }
                    gerarNumerosAleatorios($NumEscPorAposta, $NumLot);
                    premiação($quantaposta, $NumLot, $NumEscPorAposta); 
                    break;

             case 2:

                print("Quantos números você quer por na aposta? (entre " . $NumMinLot . " e " . $NumMaxLot . ")\n");
                    $NumEscPorAposta = readline("");

                    while ($NumEscPorAposta < $NumMinLot || $NumEscPorAposta > $NumMaxLot) 
                    {
                        echo "O valor informado não é permitido, repita novamente.\nDigite um número entre $NumMinLot e $NumMaxLot.\n";
                        $NumEscPorAposta = intval(trim(fgets(STDIN)));
                    }
                for($i=1 ; $i < $quantaposta +1; $i++)
                {
                 gerarNumerosAleatorios2($NumEscPorAposta, $NumLot, $quantaposta);
                 
                }

                
        }   
    }


    function gerarNumerosAleatorios($quantnumeros, $maximo) 
    {
        $numeros = array();
        for ($i = 0; $i < $quantnumeros; $i++) {
            $numeros[] = rand(1, $maximo);
        }
        sort($numeros);
        return $numeros;
    }

    function gerarNumerosAleatorios2($quantnumeros, $maximo, $quantaposta) 
    {
        $numeros = array();
        for($a = 0; $a < $quantaposta; $a++)
        {
            for ($i = 0; $i < $quantnumeros; $i++) 
            {
                $numeros[] = rand(1, $maximo);
            }
            sort($numeros);
            return $numeros;
            for($i = 0; $i < $quantaposta; $i++)
            {
                print("Sua sequencia da $a ° aposta é: $numeros[$i], ");
            }
        }
    }

    function premiação($quantaposta, $NumLot, $NumEscPorAposta)
    {
            $numerosSorteados = gerarNumerosAleatorios($NumEscPorAposta, 1, $NumLot);
        for ($i = 1; $i <= $quantaposta; $i++) 
        {
            echo "\nAposta $i: ";
            $NumEscolhidos = array_map('intval', explode(',', trim(fgets(STDIN))));
            sort($NumEscolhidos);
            $acertos = array_intersect($NumEscolhidos, $numerosSorteados);
            echo "Na aposta $i, você acertou " . count($acertos) . " número(s): " . implode(", ", $acertos) . "";
        }
    }
?>
