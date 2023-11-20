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
    const NumPreço = 3;
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

    $jogoEscolhido=0;

    while($jogoEscolhido < 1 || $jogoEscolhido > 4)
    {
        print("Qual jogo de aposta deseja escolher?\n");
        $jogoEscolhido = readline("");

        if ($jogoEscolhido < 1 || $jogoEscolhido > 4) 
        {   
            echo("O valor informado não é permitido. Repita novamente.\n"); 
        }
    }

    while($OpcAposta < 1 || $OpcAposta > 2)
    {
        print("Você deseja: \n1 Escolher os seus números \nou \n2 Aleatorizar\n");
        $OpcAposta = readline("");
        if ($jogoEscolhido < 1 || $jogoEscolhido > 2) 
        {  
        echo("O valor informado não é permitido. Repita novamente.\n"); 
        }
    }

    print("Quantas apostas você deseja fazer?\n");
    $quantaposta = readline("");

    switch ($jogoEscolhido) 
    {
        case 1:

            QualLoteria($jogoEscolhido, $OpcAposta, NumMinMegaSenna, NumMaxMegaSenna, NumMegaSenna, $quantaposta);

        break;

        case 2:   
     
            QualLoteria($jogoEscolhido, $OpcAposta, NumMinQuina, NumMaxQuina, NumQuina, $quantaposta);

        break;

        case 3: 
    
            $preço = NumPreço * $quantaposta;
            print("Isso custará a você R$ $ $preço,00\n");
            QualLoteria($jogoEscolhido, $OpcAposta, NumMinLotoMania, NumMaxLotoMania, NumLotoMania, $quantaposta);

        break;

        case 4: 
    
           QualLoteria($jogoEscolhido, $OpcAposta, NumMinLotoFacil, NumMaxLotoFacil, NumLotoFacil, $quantaposta);  

        break;
    }


    function QualLoteria($jogoEscolhido, $OpcAposta, $NumMinLot, $NumMaxLot, $NumLot, $quantaposta)
    {
        switch($OpcAposta)
        {
            case 1:
                    
                    print("Quantos números você quer por na aposta? (entre " . $NumMinLot . " e " . $NumMaxLot . ")\n");
                    $NumEscPorAposta = readline("");

                    if($jogoEscolhido == 1 and $NumEscPorAposta == 6)
                    {
                        $preço = 5 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 7){
                        $preço = 35 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 8){
                        $preço = 140 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 9){
                        $preço = 420 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n"); 
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 10){
                        $preço = 1050 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 11){
                        $preço = 2310 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 12){
                        $preço = 4620 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 13){
                        $preço = 8580 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 14){
                        $preço = 15015 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 15){
                        $preço = 25025 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 16){
                        $preço = 40040 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 17){
                        $preço = 61880 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 18){
                        $preço = 92820 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 19){
                        $preço = 135660 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 1 and $NumEscPorAposta == 20){
                        $preço = 193800 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 5){
                        $preço = 3.50 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 6){
                        $preço = 3.50 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 7){
                        $preço = 3.50 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 8){
                        $preço = 3.50 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 9){
                        $preço = 6.30 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 10){
                        $preço = 12.60 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 11){
                        $preço = 23.10 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 12){
                        $preço = 39.60 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 13){
                        $preço = 64.35 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 14){
                        $preço = 100.10 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 2 and $NumEscPorAposta == 15){
                        $preço = 150.15 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$" . number_format($preço, 2, ',', '.') . "\n");
                    }else if($jogoEscolhido == 4 and $NumEscPorAposta == 15){
                        $preço = 3 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 4 and $NumEscPorAposta == 16){
                        $preço = 48 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 4 and $NumEscPorAposta == 17){
                        $preço = 408 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 4 and $NumEscPorAposta == 18){
                        $preço = 2448 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 4 and $NumEscPorAposta == 19){
                        $preço = 11628 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }else if($jogoEscolhido == 4 and $NumEscPorAposta == 20){
                        $preço = 46512 * $quantaposta;
                        print("Com $quantaposta aposta(s) de $NumEscPorAposta números custará a você R$ $preço,00\n");
                    }

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
                 $NumEscolhidos = gerarNumerosAleatorios2($NumEscPorAposta, $NumLot, $quantaposta);
                 echo "Os números aleatórios gerados são: " . implode(", ", $NumEscolhidos) . "\n";
                }
                print("\nNão esqueça de anotalos!");
                premiação($quantaposta, $NumLot, $NumEscPorAposta); 
                break;

                
        }   
    }


    function gerarNumerosAleatorios($quantnumeros, $maximo) 
    {
        $numeros = array();
        while (count($numeros) < $quantnumeros) {
            $novoNumero = rand(1, $maximo);
            if (!in_array($novoNumero, $numeros)) {
                $numeros[] = $novoNumero;
            }
        }
        sort($numeros);
        return $numeros;
    }

    function gerarNumerosAleatorios2($quantnumeros, $maximo, $quantaposta) 
    {
        $numeros = array();
        for($a = 0; $a < $quantaposta; $a++)
        {
            while (count($numeros) < $quantnumeros) 
            {
                $novoNumero = rand(1, $maximo);
                if (!in_array($novoNumero, $numeros)) 
                {
                    $numeros[] = $novoNumero;
                }
            }
            sort($numeros);
            return $numeros;
        }
    }

    function premiação($quantaposta, $NumLot, $NumEscPorAposta)
    {
            $numerosSorteados = gerarNumerosAleatorios($NumEscPorAposta, $NumLot, $quantaposta);
        for ($i = 1; $i <= $quantaposta; $i++) 
        {
            echo "\nAposta $i: ";
            $NumEscolhidos = array_map('intval', explode(',', trim(fgets(STDIN))));
            sort($NumEscolhidos);
            $acertos = array_intersect($NumEscolhidos, $numerosSorteados);
            if(count($acertos) == 0)
            { 
                echo "É uma pena que você tenha errado todos os números T-T na $i ° aposta, tenta na próxima, e jogue com moderação.";
            }else if(count($acertos) >= 2)
            {
                echo "Na aposta $i, você acertou " . count($acertos) . " números e eles são: " . implode(", ", $acertos) . "";   
            }else{  
                echo "Na aposta $i, você acertou " . count($acertos) . " número e ele é: " . implode(", ", $acertos) . "";
            }
        }
    }
?>
