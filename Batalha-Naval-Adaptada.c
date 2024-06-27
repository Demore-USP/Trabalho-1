#include "std/io.h" //lib. padrao
#define MAX 30 //tamanho maximo do nome

int main(){

    //variavel que diz qual dos cases vai entrar
    int r = 0;

    //comecar o loop do jogo
    while(r != 4){

    char tabuleiro_p1[8][8]; //tabuleiro do player 1

    char tabuleiro_p2[8][8]; //tabuleiro do player 2

    int navio_p1 = 10;

    int navio_p2 = 10;

    char jogo_p1[8][8];

    char jogo_p2[8][8];

    //inicializando os tabuleiros com "agua"
    for (int i=0; i<8; i++){
        for (int j=0; j<8; j++){
            tabuleiro_p1[i][j] = '#'; //tabuleiro para posicionar os navios
            tabuleiro_p2[i][j] = '#'; //tabuleiro para posicionar os navios
            jogo_p1[i][j] = '#'; //tabuleiro do player 1 durante o jogo
            jogo_p2[i][j] = '#'; //tabuleiro do player 2 durante o jogo
        }
    }

    sfill(0);
__cursor = 0; //limpa a tela
    prints("\n");
    prints("\n");
    prints("\n");
        
    prints(" ___   _ _____ _   _    _  _   _        ");
    prints("| _ ) /_\\|_  _/_\\ | |  | || | /_\\   \n");
    prints("| _ \\/ _ \\| |/ _ \\| |__| __ |/ _ \\ \n");
    prints("|___/_/ \\_|_/_/_\\_|____|_||_/_/ \\_\\\n\n");
    prints("     | \\| | /_\\ \\ / /_\\ | |        \n");
    prints("     | .` |/ _ \\ V / _ \\| |_         \n");
    prints("     |_|\\_/_/ \\_\\_/_/ \\_|___|      \n");                            
    prints("\n");
    prints("\n");
    prints("              |    |    |           \n");
    prints("             )_)  )_)  )_)          \n");
    prints("            )___))___))___)\\\      \n");
    prints("           )____)____)_____)\\\\    \n");
    prints("         _____|____|____|____\\\\\__\n");
    prints("         \\\                   /    \n");
    prints("          ^^^^^^^^^^^^^^^^^^^     \n");
    prints("\n");
    prints("\n");

    //menu principal
    prints("        ~~~~~~~~~~~~~~~~~~~~~~\n");
    prints("        |  1 - Jogar         |\n");
    prints("        |  2 - Criadores     |\n");
    prints("        |  3 - Manuel        |\n");
    prints("        |  4 - Sair          |\n");
    prints("        ~~~~~~~~~~~~~~~~~~~~~~\n");

    r = getc() - '0'; //recebe uma opcao para entrar no switch
    getc();//serve pra funcionar o getchar do menu

    char nome_player1[MAX];
    char nome_player2[MAX];

    int x; //variaveis para atribuir os navios
    int y; //variaveis para atribuir os navios

    char coordenadas[3];

    int primeira_parte_x = -1;
    int primeira_parte_y = -1;

    if(r==1){ //jogar

            sfill(0);
__cursor = 0; //limpa a tela
            prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            prints("Player 1, escolha seu nome:\n");
            prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n");
            scans(nome_player1, MAX);

            prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            prints("Player 2, escolha seu nome:\n");
            prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            scans(nome_player2, MAX);

            ////////////////////////////////////////////////////////////
            //loop para o player1 posicionar os navios
            while (navio_p1 > 0){

                sfill(0);
__cursor = 0;
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                prints(nome_player1);
                prints(", posicione seus navios:\n");
                prints(nome_player2);
                prints(", de licenca!\n");
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n");

                prints("  1 2 3 4 5 6 7 8");
                prints("\n");
                for (int i = 0; i < 8; i++) {
                    printc(65+i);
                    printc('|');
                    for (int j = 0; j < 8; j++) {
                        printc(tabuleiro_p1[i][j]);
                        prints(" ");
                    }
                    prints("\n");
                }

                prints("\nDigite as coordenadas:");
                scans(coordenadas, 3);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                //if para verificar se as coordenadas do player estao dentro do tabuleiro e nao tem navio
                if ((x >= 0 && x < 8 && y >= 0 && y < 8) && (tabuleiro_p1[x][y] == '#')){
                    // verificando se e um "posicionamento de 2ª parte do navio"
                    if ((navio_p1 % 2) == 1){
                        // Verificar se a posicao e adjacente à primeira parte
                        if (((x == primeira_parte_x) && (y == primeira_parte_y + 1 || y == primeira_parte_y - 1))
                           ||
                           ((y == primeira_parte_y) && (x == primeira_parte_x + 1 || x == primeira_parte_x - 1))){
                            tabuleiro_p1[x][y] = 'O';
                            navio_p1 = navio_p1-1;
                        }
                        else{
                            prints("\nCoordenadas invalidas! A segunda \n");
                            prints("parte do navio deve ser adjacente a primeira!\n");
                            prints("Aperte enter para tentar de novo!");
                            getc();
                        }
                    }
                    else{
                        tabuleiro_p1[x][y] = 'O';
                        navio_p1 = navio_p1-1;
                        primeira_parte_x = x;
                        primeira_parte_y = y;
                    }
                }
                else{
                prints("\nCoordenadas invalidas!\nAperte enter para tentar de novo!"); //nao decrementa o navio_p1 e nada acontece
                getc();
                }
            }
            ////////////////////////////////////////////////////////
            //mensagem que os navios foram posicionados com sucesso
            sfill(0);
__cursor = 0;
            prints("\n\n\n\n  1 2 3 4 5 6 7 8");
            prints("\n");
            for (int i = 0; i < 8; i++) {
                printc(65+i);
                printc('|');
                for (int j = 0; j < 8; j++) {
                    printc(tabuleiro_p1[i][j]);
                    prints(" ");
                }
                prints("\n");
            }
            prints("\n");
            prints(nome_player1);
            prints(", seus navios estao prontos!\n");
            getc();
            /////////////////////////////////////////////////////////
            //loop para o player2 posicionar os navios

            primeira_parte_x = -1;
            primeira_parte_y = -1;
            while (navio_p2 > 0){

                sfill(0);
__cursor = 0;
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                prints(nome_player2);
                prints(", posicione seus navios:\n");
                prints(nome_player1);
                prints(", de licenca!\n");
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n");

                prints("  1 2 3 4 5 6 7 8");
                prints("\n");
                for (int i = 0; i < 8; i++) {
                    printc(65+i);
                    printc('|');
                    for (int j = 0; j < 8; j++) {
                        printc(tabuleiro_p2[i][j]);
                        prints(" ");
                    }
                    prints("\n");
                }


                prints("\nDigite as coordenadas:");
                scans(coordenadas, 3);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                //if para verificar se as coordenadas do player estao dentro do tabuleiro e nao tem navio
                if ((x >= 0 && x < 8 && y >= 0 && y < 8) && (tabuleiro_p2[x][y] == '#')){
                    // verificando se e um "posicionamento de 2ª parte do navio"
                    if ((navio_p2 % 2) == 1){
                        // Verificar se a posicao e adjacente à primeira parte
                        if (((x == primeira_parte_x) && (y == primeira_parte_y + 1 || y == primeira_parte_y - 1))
                           ||
                           ((y == primeira_parte_y) && (x == primeira_parte_x + 1 || x == primeira_parte_x - 1))){
                            tabuleiro_p2[x][y] = 'O';
                            navio_p2 = navio_p2-1;
                        }
                        else{
                            prints("\nCoordenadas invalidas! A posicao deve ser adjacente, ja que e a segunda parte do navio!\nAperte enter para tentar de novo!");
                            getc();
                            getc();
                        }
                    }
                    else{
                        tabuleiro_p2[x][y] = 'O';
                        navio_p2 = navio_p2-1;
                        primeira_parte_x = x;
                        primeira_parte_y = y;
                    }
                }
                else{
                prints("\nCoordenadas invalidas!\nAperte enter para tentar de novo!"); //nao decrementa o navio_p1 e nada acontece
                getc();
                getc();
                }
            }
            ////////////////////////////////////////////////////////
            //mensagem que os navios foram posicionados com sucesso
            sfill(0);
__cursor = 0;
            prints("\n\n\n\n  1 2 3 4 5 6 7 8");
            prints("\n");
            for (int i = 0; i < 8; i++) {
                printc(65+i);
                printc('|');
                for (int j = 0; j < 8; j++) {
                    printc(tabuleiro_p2[i][j]);
                    prints(" ");
                }
                prints("\n");
            }
            prints("\n");
            prints(nome_player2);
            prints(", seus navios estao prontos!\n");
            getc();
            /////////////////////////////////////////////////////////
            //loop do jogo em si
            navio_p1 = 10;
            navio_p2 = 10;

            prints("\nPressione enter para comecar o jogo!\n");
            getc();

            while(navio_p1>0 && navio_p2>0){
                sfill(0);
__cursor = 0;
                prints("\nTabuleiro de ");
                prints(nome_player1);
                prints("\n  1 2 3 4 5 6 7 8");
                prints("\n");
                for (int i = 0; i < 8; i++){
                    printc(65+i);
                    printc('|');
                    for (int j = 0; j < 8; j++) {
                        printc(jogo_p1[i][j]);
                        prints(" ");
                    }
                    prints("\n");
                }
                prints("-----------------");
                prints("\nTabuleiro de ");
                prints(nome_player2);
                prints("\n  1 2 3 4 5 6 7 8");
                prints("\n");
                for (int i = 0; i < 8; i++) {
                    printc(65+i);
                    printc('|');
                    for (int j = 0; j < 8; j++) {
                        printc(jogo_p2[i][j]);
                        prints(" ");
                    }
                    prints("\n");
                }

                prints("\n");
                prints(nome_player1);
                prints(", escolha as coordenadas para atirar: ");
                scans(coordenadas, 3);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                if (x >= 0 && x < 8 && y >= 0 && y < 8){
                    if(tabuleiro_p2[x][y] == 'O'){
                        jogo_p2[x][y] = 'X';
                        tabuleiro_p2[x][y] = 'X';
                        navio_p2 = navio_p2-1;
                        if(navio_p2==0){
                            break;
                        }
                    }else if(tabuleiro_p2[x][y]== 'X'){
                            prints("Voce ja atirou nessa coordenada!\n");
                            getc();
                            getc();
                          }else{
                            jogo_p2[x][y] = '@';
                          }
                }else{
                    prints("Coordenadas invalidas!\n");
                }

                sfill(0);
__cursor = 0;
                prints("\n");
                prints("Tabuleiro de ");
                prints(nome_player1);
                prints("\n  1 2 3 4 5 6 7 8");
                prints("\n");
                for (int i = 0; i < 8; i++) {
                    printc(65+i);
                    printc('|');
                    for (int j = 0; j < 8; j++) {
                        printc(jogo_p1[i][j]);
                        prints(" ");
                    }
                    prints("\n");
                }

                prints("-----------------");
                prints("\nTabuleiro de ");
                prints(nome_player2);
                prints("\n  1 2 3 4 5 6 7 8");
                prints("\n");
                for (int i = 0; i < 8; i++) {
                    printc(65+i);
                    printc('|');
                    for (int j = 0; j < 8; j++) {
                        printc(jogo_p2[i][j]);
                        prints(" ");
                    }
                    prints("\n");
                }
                prints("\n");

                prints(nome_player2);
                prints(", escolha as coordenadas para atirar: ");
                scans(coordenadas, 3);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                if(x >= 0 && x < 8 && y >= 0 && y < 8){
                    if(tabuleiro_p1[x][y] == 'O'){
                        jogo_p1[x][y] = 'X';
                        tabuleiro_p1[x][y] = 'X';
                        navio_p1 = navio_p1-1;
                        if(navio_p1==0){
                            
                        }
                    }else if(tabuleiro_p1[x][y]== 'X'){
                            prints("Voce ja atirou nessa coordenada!\n");
                            getc();
                            getc();
                          }else{
                            jogo_p1[x][y] = '@';
                          }
                }else{
                    prints("Coordenadas invalidas!\n");
                }
            }
            sfill(0);
__cursor = 0;
            if(navio_p1==0){
                prints("\n\n\n\n\n\n\n\n");
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                prints("Parabens ");
                prints(nome_player2);
                prints(", voce venceu!\n");
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~\n");

            }
            if(navio_p2==0){
                prints("\n\n\n\n\n\n\n\n");
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                prints("Parabens ");
                prints(nome_player1);
                prints(", voce venceu!\n");
                prints("~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            }
            prints("Aperte Enter para voltar ao Menu");
            getc();//quando apertar enter volta pro menu
            

        } else if(r==2){ //criadores

            sfill(0);
__cursor = 0; //limpa a tela
            prints("\n\n\n\n\n\n\n");
            prints("        ~~~~~~~~~~~~~~~~~~~~~~\n");
            prints("        |                    |\n");
            prints("        | Artur Araujo       |\n");
            prints("        |  nUSP: 14651458    |\n");
            prints("        |                    |\n");
            prints("        | Leonardo Demore    |\n");
            prints("        |  nUSP: 15674786    |\n");
            prints("        |                    |\n");
            prints("        | Luiz Correia       |\n");
            prints("        |  nUSP: 15639682    |\n");
            prints("        |                    |\n");
            prints("        | Ana Paula de Abreu |\n");
            prints("        |  nUSP: 12688424    |\n");
            prints("        |                    |\n");
            prints("        ~~~~~~~~~~~~~~~~~~~~~~\n");
            getc();//quando apertar enter volta pro menu

        }else if(r==3){

       sfill(0);
       __cursor = 0;
       prints("Batalha Naval\n\n");
       prints("Objetivo: Destruir todos os navios do \n");
       prints("oponente antes que ele destrua os seus.\n\n");
       prints("Regras:\n");
       prints("1. Posicionamento dos Navios: \n"); 
       prints("Posicione seus navios em \n");
       prints("um tabuleiro 8x8.\n\n");
       prints("- Cada jogador tem 5 navios \n");
       prints(" de duas celulas cada.\n\n");
       prints("- Cada navio deve ocupar exatamente \n");
       prints("duas celulas.\n\n");
       prints("- Nao e permitido sobrepor navios.\n\n");
       getc();
       sfill(0);
       __cursor = 0;
       prints("2. Ataque: Ataque o tabuleiro \n");
       prints("do oponente alternadamente.\n\n");
       prints("- Escolha uma coordenada para atacar, \n");
       prints("informando letra e numero.\n\n");
       prints("- Se atingir um navio, ele sera marcado "); 
       prints("com 'X'. Caso contrario, sera marcado \n");
       prints("com '@'.\n\n\n\n");
       prints("3. Vitoria: O jogo continua ate que \n");
       prints("um jogador destrua todos os navios \n");
       prints("do oponente.\n\n");
       prints("Como Jogar:\n");
       prints("1. Insira os nomes dos jogadores.\n");
       prints("2. Posicione seus navios quando \n");
       prints("solicitado.\n");
       prints("3. Ataque o tabuleiro do oponente \n");
       prints("informando as coordenadas.\n");
       prints("4. O jogo termina quando todos os \n");
       prints("navios de um jogador forem destruidos.\n");

            getc();
        } else if(r==4){

            //mensagem final
            sfill(0);
__cursor = 0; //limpa a tela
            prints("\n\n\n\n\n\n\n\n\n\n");
            prints("         ~~~~~~~~~~~~~~~~~~~~~~\n");
            prints("           Obrigado por jogar! \n");
            prints("         ~~~~~~~~~~~~~~~~~~~~~~\n");
            break;
                
        } else { //caso aperte uma tecla invalida

            sfill(0);
__cursor = 0; //limpa a tela
            prints("\n\n\n\n\n\n\n\n\n\n");
            prints("        ~~~~~~~~~~~~~~~~~~~~~~\n");
            prints("          Comando Invalido!   \n");
            prints("        ~~~~~~~~~~~~~~~~~~~~~~\n");
            getc();//quando apertar enter volta pro menu
        }
    } //fim do while (fim do jogo)
}
