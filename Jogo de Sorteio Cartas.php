<?php
class Carta
{

    private $numero;
    private string $nome;

    /**
     * Get the value of numero pms
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * Set the value of numero pms
     */
    public function setNumero($numero): self
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Get the value of nome pms
     */
    public function getNome(): string
    {
        return $this->nome;
    }

    /**
     * Set the value of nome pms
     */
    public function setNome(string $nome): self
    {
        $this->nome = $nome;

        return $this;
    }
}

function geradorCarta($baralho) {
    $carta = new Carta();
    
    $chave = array_rand($baralho);
    $carta->setNome($chave);

    $valores = $baralho[$chave];
    $numSorteado = $valores[array_rand($valores)];
    $carta->setNumero($numSorteado);
    
    return $carta;
}

function sortearCarta($baralho) {
    $cartaAleatoria = $baralho[array_rand($baralho)];
    
    return $cartaAleatoria;
}

function retornarNaipes($baralho) {
    $naipes = array();
    foreach($baralho as $naipe => $carta)
        array_push($naipes, $naipe);

    return $naipes;
}

function jogar($cartaEscolhida, $baralhoTipo, $baralho){
    $naipes = retornarNaipes($baralhoTipo);
    $jogoAtivo = true;
                while ($jogoAtivo) {
                    print("╔═══════════════════Menu══════════════════╗\n");
                    print("║            O que deseja fazer?          ║\n");
                    print("║ 1: Escolher uma das cartas mostradas    ║\n");
                    print("║ 2: desistir                             ║\n");
                    print("╚═════════════════════════════════════════╝\n");
    
                    $opcao = readline("");
    
                    switch ($opcao) {
                        case 1:
                            print("Digitar sempre em máisculo a primeira letra dos naipes e valores se não forem números!!!\n");
                            print("Qual era o naipe da carta entre esses?\n");
                            foreach($naipes as $naipe){
                                print($naipe ." \n");
                            }
                            $naipeChave = readline("");
                            $valor = readline("Qual foi o valor da carta?\n");
    
                            if ($cartaEscolhida->getNome() === $naipeChave && $cartaEscolhida->getNumero() === $valor) {
                                print("Parabéns por ter acertado!!!\n");
                                $jogoAtivo = false;
                                break;
                            } else {
                                foreach ($baralho as $index => $carta) {
                                    if ($carta->getNome() === $naipeChave && $carta->getNumero() === $valor) {
                                        array_splice($baralho, $index, 1);
                                        break; 
                                    }
                                }
                                print("Infelizmente você errou ou digitou a carta errada ;(\n");
                                print("Talvez na próxima\n\n");

                                foreach ($baralho as $carta) {
                                    print($carta->getNome() . ": " . $carta->getNumero() . "\n");
                                }
                            }
                            break;
    
                        case 2:
                            print("Que pena;(\n");
                            print("A carta era: ". $cartaEscolhida->getNome() ." : " . $cartaEscolhida->getNumero() . "\n");
                            $jogoAtivo = false;
                            break;
    
                        default:
                            print("Opção inválida!\n");
                    }
                }
}

$baralhoPoker = [
    "Paus" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Ouros" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Copas" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Espadas" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei")
];

$baralhoEspanhol = [
    "Ouros" => array("1", "2", "3", "4", "5", "6", "7", "10", "11", "12"),
    "Copas" => array("1", "2", "3", "4", "5", "6", "7", "10", "11", "12"),
    "Espadas" => array("1", "2", "3", "4", "5", "6", "7", "10", "11", "12"),
    "Paus" => array("1", "2", "3", "4", "5", "6", "7", "10", "11", "12")
];

$baralhoPoke = [
    "Água" => array("Squirtle", "Psyduck", "Gyarados", "Lapras", "Greninja"),
    "Fogo" => array("Charmander", "Vulpix", "Arcanine", "Charizard", "Moltres"),
    "Planta" => array("Bulbasaur", "Oddish", "Exeggutor", "Torterra", "Rillaboom"),
    "Elétrico" => array("Pikachu", "Raichu", "Jolteon", "Ampharos", "Zeraora"),
    "Lutador" => array("Machop", "Hitmonlee", "Lucario", "Conkeldurr", "Incineroar"),
    "Fantasma" => array("Gastly", "Gengar", "Mismagius", "Chandelure", "Sableye"),
    "Dragão" => array("Dratini", "Dragonair", "Dragonite", "Rayquaza", "Garchomp")
];

$baralhoFrances = [
    "Paus" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Ouros" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Copas" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Espadas" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei")
];

$naipes = [];

while (true) {
    print("╔══════════════Menu═════════════╗\n");
    print("║      O que deseja fazer?      ║\n");
    print("║                               ║\n");
    print("║ 1: Baralho convencional(poker)║\n");
    print("║ 2: Baralho Espanhol           ║\n");
    print("║ 3: Baralho Francês            ║\n");
    print("║ 4: Baralho Pokemón            ║\n");
    print("║ 5: Criar seu proprio baralho  ║\n");
    print("║ 0: Encerrar o pragrama        ║\n");
    print("╚═══════════════════════════════╝\n");

    $opcao = readline("");

    switch ($opcao) {

        case 1:
            $baralho = [];
            $cartaEscolhida = null;

            $quantidade = readline("Quantas cartas deseja tentar a sorte?\n");
            for($i=0; $i<$quantidade; $i++){
                $card = geradorCarta($baralhoPoker);
                array_push($baralho, $card);
                $naipe = $card->getNome(); 
                $numero = $card->getNumero(); 
                print("$naipe: $numero\n");
                
                $index = array_search($numero, $baralhoPoker[$naipe]);
                if ($index !== false) {
                    array_splice($baralhoPoker[$naipe], $index, 1);
                    
                    if (count($baralhoPoker[$naipe]) == 0) {
                        array_splice($baralhoPoker, array_search($naipe, array_keys($baralhoPoker)), 1);
                    }
                }
            }

            $cartaEscolhida = sortearCarta($baralho);

            //Só pra conferir se ta funcionando
           // print($naipe = $cartaEscolhida->getNome().
            //$numero = $cartaEscolhida->getNumero());

            jogar($cartaEscolhida, $baralhoPoker, $baralho);
            break;

        case 2:
            $baralho = [];
            $cartaEscolhida = null;
            
            $quantidade = readline("Quantas cartas deseja tentar a sorte?\n");
            for($i=0; $i<$quantidade; $i++){
                $card = geradorCarta($baralhoEspanhol);
                array_push($baralho, $card);
                $naipe = $card->getNome(); 
                $numero = $card->getNumero(); 
                print("$naipe: $numero\n");
                
                $index = array_search($numero, $baralhoEspanhol[$naipe]);
                if ($index !== false) {
                    array_splice($baralhoEspanhol[$naipe], $index, 1);
                    
                    if (count($baralhoEspanhol[$naipe]) == 0) {
                        array_splice($baralhoEspanhol, array_search($naipe, array_keys($baralhoEspanhol)), 1);
                    }
                }
            }

            $cartaEscolhida = sortearCarta($baralho);

            //Só pra conferir se ta funcionando
           // print($naipe = $cartaEscolhida->getNome().
            //$numero = $cartaEscolhida->getNumero());

            jogar($cartaEscolhida, $baralhoEspanhol, $baralho);
            break;
            
        case 3:
            $baralho = [];
            $cartaEscolhida = null;
            
            $quantidade = readline("Quantas cartas deseja tentar a sorte?\n");
            for($i=0; $i<$quantidade; $i++){
                $card = geradorCarta($baralhoFrances);
                array_push($baralho, $card);
                $naipe = $card->getNome(); 
                $numero = $card->getNumero(); 
                print("$naipe: $numero\n");
                
                $index = array_search($numero, $baralhoFrances[$naipe]);
                if ($index !== false) {
                    array_splice($baralhoFrances[$naipe], $index, 1);
                    
                    if (count($baralhoFrances[$naipe]) == 0) {
                        array_splice($baralhoFrances, array_search($naipe, array_keys($baralhoFrances)), 1);
                    }
                }
            }

            $cartaEscolhida = sortearCarta($baralho);

            //Só pra conferir se ta funcionando
           // print($naipe = $cartaEscolhida->getNome().
            //$numero = $cartaEscolhida->getNumero());

            jogar($cartaEscolhida, $baralhoFrances, $baralho);
            break;
        
        case 4:
            $baralho = [];
            $cartaEscolhida = null;
            
            $quantidade = readline("Quantas cartas deseja tentar a sorte?\n");
            for($i=0; $i<$quantidade; $i++){
                $card = geradorCarta($baralhoPoke);
                array_push($baralho, $card);
                $naipe = $card->getNome(); 
                $numero = $card->getNumero(); 
                print("$naipe: $numero\n");
                
                $index = array_search($numero, $baralhoPoke[$naipe]);
                if ($index !== false) {
                    array_splice($baralhoPoke[$naipe], $index, 1);
                    
                    if (count($baralhoPoke[$naipe]) == 0) {
                        array_splice($baralhoPoke, array_search($naipe, array_keys($baralhoPoke)), 1);
                    }
                }
            }

            $cartaEscolhida = sortearCarta($baralho);

            //Só pra conferir se ta funcionando
           // print($naipe = $cartaEscolhida->getNome().
            //$numero = $cartaEscolhida->getNumero());

            jogar($cartaEscolhida, $baralhoPoke, $baralho);
            break;
           
        case 5:
            $baralho = [];
            $cartaEscolhida = null;
            
            print("Você terá que irformar as cartas, uma por vez para poder jogar.\n");
            $quantidade = readline("Quantas cartas deseja colocar para jogar?\n");
            for ($i=0; $i<$quantidade; $i++) {
                $cartas = new Carta();
                $cartas->setNome(readline("Coloque o nome da carta: "))->setNumero(readline("Qual o número de sua carta: "));
                $baralho[] = $cartas;
            }

            //print_r($baralho);
            //exit;

            $cartaEscolhida = sortearCarta($baralho);

            //Só pra conferir se ta funcionando
           // print($naipe = $cartaEscolhida->getNome().
            //$numero = $cartaEscolhida->getNumero());

            $jogoAtivo = true;
            while ($jogoAtivo) {
                print("╔═══════════════════Menu══════════════════╗\n");
                print("║            O que deseja fazer?          ║\n");
                print("║ 1: Escolher uma das cartas mostradas    ║\n");
                print("║ 2: desistir                             ║\n");
                print("╚═════════════════════════════════════════╝\n");

                $opcao = readline("");

                switch ($opcao) {
                    case 1:
                        print("Digite sempre em maiúsculo a primeira letra dos naipes e valores se não forem números!!!\n");
                        print("Qual era o naipe da carta entre esses?\n");
                        foreach ($baralho as $naipe) {
                            print($naipe->getNome() . "\n");
                        }
                        $naipeChave = readline("");
                        $valor = readline("Qual foi o valor da carta?\n");

                        if ($cartaEscolhida->getNome() === $naipeChave && $cartaEscolhida->getNumero() === $valor) {
                            print("Parabéns por ter acertado!!!\n");
                            $jogoAtivo = false;
                        } else {
                            foreach ($baralho as $index => $carta) {
                                if ($carta->getNome() === $naipeChave && $carta->getNumero() === $valor) {
                                    array_splice($baralho, $index, 1);
                                    break;
                                }
                            }
                            print("Infelizmente você errou ou digitou a carta errada ;(\n");
                            print("Talvez na próxima\n\n");

                            foreach ($baralho as $carta) {
                                print($carta->getNome() . ": " . $carta->getNumero() . "\n");
                            }
                        }
                        break;

                    case 2:
                        print("Que pena;(\n");
                        print("A carta era: " . $cartaEscolhida->getNome() . " : " . $cartaEscolhida->getNumero() . "\n");
                        $jogoAtivo = false;
                        break;

                    default:
                        print("Opção inválida!\n");
                }
            }
            break;

        case 0:
            print("Obrigado por jogar...\n");
            return true;

        default:
            print("Opção invalida!\n");
    }
}
