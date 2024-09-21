<?php
class Carta
{

    private $numero;
    private string $nome;

    /**
     * Get the value of numero
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * Set the value of numero
     */
    public function setNumero($numero): self
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Get the value of nome
     */
    public function getNome(): string
    {
        return $this->nome;
    }

    /**
     * Set the value of nome
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
    "Água" => array("1: Squirtle", "2: Psyduck", "3: Gyarados", "4: Lapras", "5: Greninja"),
    "Fogo" => array("1: Charmander", "2: Vulpix", "3: Arcanine", "4: Charizard", "5: Incineroar"),
    "Planta" => array("1: Bulbasaur", "2: Oddish", "3: Exeggutor", "4: Torterra", "5: Rillaboom"),
    "Elétrico" => array("1: Pikachu", "2: Raichu", "3: Jolteon", "4: Ampharos", "5: Zeraora"),
    "Lutador" => array("1: Machop", "2: Hitmonlee", "3: Lucario", "4: Conkeldurr", "5: Incineroar"),
    "Fantasma" => array("1: Gastly", "2: Gengar", "3: Mismagius", "4: Chandelure", "5: Sableye"),
    "Dragão" => array("1: Dratini", "2: Dragonair", "3: Dragonite", "4: Rayquaza", "5: Garchomp")
];

$baralhoFrances = [
    "Paus" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Ouros" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Copas" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei"),
    "Espadas" => array("Ás", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Valete", "Dama", "Rei")
];

$cartaEscolhida = null;
$naipes = [];

while (true) {

    print("╔══════════════Menu═════════════╗\n");
    print("║      O que deseja fazer?      ║\n");
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

            $naipes = retornarNaipes($baralhoPoker);

            //Só pra conferir se ta funcionando
            print($naipe = $cartaEscolhida->getNome().
            $numero = $cartaEscolhida->getNumero());

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
                            $naipeChave = readline("Qual era o naipe da carta?(Paus, Ouros, Copas ou Espadas)\n");
                            $valor = readline("Qual foi o valor da carta?\n");
    
                            if ($cartaEscolhida->getNome() === $naipeChave && $cartaEscolhida->getNumero() === $valor) {
                                print("Parabéns por ter acertado!!!\n");
                                $jogoAtivo = false;
                                break;
                            } else {
                                foreach ($baralho as $index => $carta) {
                                    foreach ($carta as $naipeAtual => $numeroAtual) {
                                        if ($naipeAtual === $naipeChave && $numeroAtual === $valor) {
                                            array_splice($baralho, $index, 1);
                                            break;
                                        }
                                    }
                                }
                                print("Infelizmente você errou ou digitou a carta errada ;(\n");
                                print("Talvez na próxima\n\n");

                                foreach ($baralho as $carta) {
                                    foreach ($carta as $naipe => $valor) {
                                        print($naipe . ": " . $valor . "\n");
                                    }
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
                break;

        case 2:
            
        case 3:
        
        case 4:
           
        case 5:
            $cartas = new Carta();
            print("Você terá que irformar 7 cartas, uma por vez para poder jogar.\n");
            for ($i = 0; $i <= 7; $i++) {
                $cartas->setNome(readline("Coloque o nome da carta: "))->setNumero("Qual o número de sua carta: ");
                $baralho[] = $cartas;
            }
            break;

        case 0:
            print("Obrigado por jogar...\n");
            return true;

        default:
            print("Opção invalida!\n");
    }
}
