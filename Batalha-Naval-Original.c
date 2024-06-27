#include <stdio.h>//lib. padrão
#include <locale.h>//lib. pra deixar acentuar
#include <stdlib.h>//lib. pra limpar a tela
#define MAX 30 //tamanho maximo do nome

          /*system("cls"); //limpa a tela
            printf("  1 2 3 4 5 6 7 8 \n");
            printf("A|~ ~ ~ ~ ~ ~ ~ ~|\n");
            printf("B|~ ~ ~ ~ ~ ~ ~ ~|\n");
            printf("C|~ ~ ~ ~ ~ ~ ~ ~|\n");
            printf("D|~ ~ ~ ~ ~ ~ ~ ~|\n");
            printf("E|~ ~ ~ ~ ~ ~ ~ ~|\n");
            printf("F|~ ~ ~ ~ ~ ~ ~ ~|\n");
            printf("G|~ ~ ~ ~ ~ ~ ~ ~|\n");
            printf("H|~ ~ ~ ~ ~ ~ ~ ~|\n\n");*/


int main(void) {
    #ifdef _WIN32
        #define CLEAR_SCREEN "cls"
    #else
        #define CLEAR_SCREEN "clear"
    #endif
    setlocale(LC_ALL, "Portuguese");//serve pra deixar acentuar

    //variavel que diz qual dos cases vai entrar
    int r = 0;
    //começar o loop do jogo
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
                tabuleiro_p1[i][j] = '~'; //tabuleiro para posicionar os navios
                tabuleiro_p2[i][j] = '~'; //tabuleiro para posicionar os navios
                jogo_p1[i][j] = '~'; //tabuleiro do player 1 durante o jogo
                jogo_p2[i][j] = '~'; //tabuleiro do player 2 durante o jogo
            }
        }

        system(CLEAR_SCREEN); //limpa a tela
        //arte
        printf("\n");
        printf("\n");
        printf("\n");
        printf("########     ###   ########   ###    ##       ##     ##    ###          ##    ##    ###    ##     ##    ###    ##       \n");
        printf("##     ##   ## ##     ##     ## ##   ##       ##     ##   ## ##         ###   ##   ## ##   ##     ##   ## ##   ##       \n");
        printf("##     ##  ##   ##    ##    ##   ##  ##       ##     ##  ##   ##        ####  ##  ##   ##  ##     ##  ##   ##  ##       \n");
        printf("########  ##     ##   ##   ##     ## ##       ######### ##     ##       ## ## ## ##     ## ##     ## ##     ## ##       \n");
        printf("##     ## #########   ##   ######### ##       ##     ## #########       ##  #### #########  ##   ##  ######### ##       \n");
        printf("##     ## ##     ##   ##   ##     ## ##       ##     ## ##     ##       ##   ### ##     ##   ## ##   ##     ## ##       \n");
        printf("########  ##     ##   ##   ##     ## ######## ##     ## ##     ##       ##    ## ##     ##    ###    ##     ## ######## \n");
        printf("\n");
        printf("\n");

        printf("\t\t\t\t\t              |    |    |                \n");
        printf("\t\t\t\t\t             )_)  )_)  )_)               \n");
        printf("\t\t\t\t\t            )___))___))___)\\\           \n");
        printf("\t\t\t\t\t           )____)____)_____)\\\\         \n");
        printf("\t\t\t\t\t         _____|____|____|____\\\\\__     \n");
        printf("\t\t\t\t\t         \\\                   /         \n");
        printf("\t\t\t\t\t         ^^^^^^^^^^^^^^^^^^^^^           \n");

        printf("\n");
        printf("\n");

        //menu principal
        printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");
        printf("\t\t\t\t\t\t|  1 - Jogar         |\n");
        printf("\t\t\t\t\t\t|  2 - Criadores     |\n");
        printf("\t\t\t\t\t\t|  3 - Manuel        |\n");
        printf("\t\t\t\t\t\t|  4 - Sair          |\n");
        printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");

        scanf("%d", &r); //recebe uma opçao para entrar no switch
        getchar();//serve pra funcionar o getchar do menu

        char nome_player1[MAX];
        char nome_player2[MAX];

        int x, y;//variaveis para atribuir os navios
        char coordenadas[3];

        int primeira_parte_x = -1;
        int primeira_parte_y = -1;

        switch(r){
        case 1: //jogar

            system(CLEAR_SCREEN); //limpa a tela
            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            printf("\t\t\t\t\t\t Player 1, escolha seu nome:\n");
            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n");
            scanf("%s", &nome_player1);

            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            printf("\t\t\t\t\t\t Player 2, escolha seu nome:\n");
            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            scanf("%s", &nome_player2);

            ////////////////////////////////////////////////////////////
            //loop para o player1 posicionar os navios
            while (navio_p1 > 0){

                system(CLEAR_SCREEN);
                printf("\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                printf("\t\t\t\t\t %s, posicione seus navios:\n", nome_player1);
                printf("\t\t\t\t\t %s, dê licença!\n" ,nome_player2);
                printf("\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n");

                printf("\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
                printf("\n\t\t\t\t\t\t");
                for (int i = 0; i < 8; i++) {
                    printf("%c|", 65+i);
                    for (int j = 0; j < 8; j++) {
                        printf("%c ", tabuleiro_p1[i][j]);
                    }
                    printf("\n\t\t\t\t\t\t");
                }


                printf("\n\t\t\t\t\t Digite as coordenadas:");
                scanf(" %s", coordenadas);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                //if para verificar se as coordenadas do player estão dentro do tabuleiro e não tem navio
                if ((x >= 0 && x < 8 && y >= 0 && y < 8) && (tabuleiro_p1[x][y] == '~')){
                    // verificando se é um "posicionamento de 2ª parte do navio"
                    if ((navio_p1 % 2) == 1){
                        // Verificar se a posição é adjacente à primeira parte
                        if (((x == primeira_parte_x) && (y == primeira_parte_y + 1 || y == primeira_parte_y - 1))
                           ||
                           ((y == primeira_parte_y) && (x == primeira_parte_x + 1 || x == primeira_parte_x - 1))){
                            tabuleiro_p1[x][y] = 'O';
                            navio_p1--;
                        }
                        else{
                            printf("\nCoordenadas inválidas! A posição deve ser adjacente, já que é a segunda parte do navio!\nAperte enter para tentar de novo!");
                            getchar();
                            getchar();
                        }
                    }
                    else{
                        tabuleiro_p1[x][y] = 'O';
                        navio_p1--;
                        primeira_parte_x = x;
                        primeira_parte_y = y;
                    }
                }
                else{
                printf("\nCoordenadas inválidas!\nAperte enter para tentar de novo!"); //não decrementa o navio_p1 e nada acontece
                getchar();
                getchar();
                }
            }
            ////////////////////////////////////////////////////////
            //mensagem que os navios foram posicionados com sucesso
            system(CLEAR_SCREEN);
            printf("\n\n\n\n\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
            printf("\n\t\t\t\t\t\t");
            for (int i = 0; i < 8; i++) {
                printf("%c|", 65+i);
                for (int j = 0; j < 8; j++) {
                    printf("%c ", tabuleiro_p1[i][j]);
                }
                printf("\n\t\t\t\t\t\t");
            }
            printf("\n\t\t\t\t\t%s, seus navios estão prontos!\n", nome_player1);
            getchar();
            getchar();
            /////////////////////////////////////////////////////////
            //loop para o player2 posicionar os navios

            primeira_parte_x = -1;
            primeira_parte_y = -1;
            while (navio_p2 > 0){

                system(CLEAR_SCREEN);
                printf("\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                printf("\t\t\t\t\t %s, posicione seus navios:\n", nome_player2);
                printf("\t\t\t\t\t %s, dê licença!\n" ,nome_player1);
                printf("\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n");

                printf("\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
                printf("\n\t\t\t\t\t\t");
                for (int i = 0; i < 8; i++) {
                    printf("%c|", 65+i);
                    for (int j = 0; j < 8; j++) {
                        printf("%c ", tabuleiro_p2[i][j]);
                    }
                    printf("\n\t\t\t\t\t\t");
                }


                printf("\n\t\t\t\t\t Digite as coordenadas:");
                scanf(" %s", coordenadas);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                //if para verificar se as coordenadas do player estão dentro do tabuleiro e não tem navio
                if ((x >= 0 && x < 8 && y >= 0 && y < 8) && (tabuleiro_p2[x][y] == '~')){
                    // verificando se é um "posicionamento de 2ª parte do navio"
                    if ((navio_p2 % 2) == 1){
                        // Verificar se a posição é adjacente à primeira parte
                        if (((x == primeira_parte_x) && (y == primeira_parte_y + 1 || y == primeira_parte_y - 1))
                           ||
                           ((y == primeira_parte_y) && (x == primeira_parte_x + 1 || x == primeira_parte_x - 1))){
                            tabuleiro_p2[x][y] = 'O';
                            navio_p2--;
                        }
                        else{
                            printf("\nCoordenadas inválidas! A posição deve ser adjacente, já que é a segunda parte do navio!\nAperte enter para tentar de novo!");
                            getchar();
                            getchar();
                        }
                    }
                    else{
                        tabuleiro_p2[x][y] = 'O';
                        navio_p2--;
                        primeira_parte_x = x;
                        primeira_parte_y = y;
                    }
                }
                else{
                printf("\nCoordenadas inválidas!\nAperte enter para tentar de novo!"); //não decrementa o navio_p1 e nada acontece
                getchar();
                getchar();
                }
            }
            ////////////////////////////////////////////////////////
            //mensagem que os navios foram posicionados com sucesso
            system(CLEAR_SCREEN);
            printf("\n\n\n\n\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
            printf("\n\t\t\t\t\t\t");
            for (int i = 0; i < 8; i++) {
                printf("%c|", 65+i);
                for (int j = 0; j < 8; j++) {
                    printf("%c ", tabuleiro_p2[i][j]);
                }
                printf("\n\t\t\t\t\t\t");
            }
            printf("\n\t\t\t\t\t%s, seus navios estão prontos!\n", nome_player2);
            getchar();
            getchar();
            /////////////////////////////////////////////////////////
            //loop do jogo em si
            navio_p1 = 10;
            navio_p2 = 10;

            printf("\n\t\t\t\t\tPressione enter para começar o jogo!\n");
            getchar();

            while(navio_p1>0 && navio_p2>0){
                system(CLEAR_SCREEN);
                printf("\n\t\t\t\t\t\tTabuleiro de %s", nome_player1);
                printf("\n\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
                printf("\n\t\t\t\t\t\t");
                for (int i = 0; i < 8; i++){
                    printf("%c|", 65+i);
                    for (int j = 0; j < 8; j++) {
                        printf("%c ", jogo_p1[i][j]);
                    }
                    printf("\n\t\t\t\t\t\t");
                }
                printf("-----------------");
                printf("\n\t\t\t\t\t\tTabuleiro de %s", nome_player2);
                printf("\n\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
                printf("\n\t\t\t\t\t\t");
                for (int i = 0; i < 8; i++) {
                    printf("%c|", 65+i);
                    for (int j = 0; j < 8; j++) {
                        printf("%c ", jogo_p2[i][j]);
                    }
                    printf("\n\t\t\t\t\t\t");
                }


                printf("\n\t\t\t\t\t\t%s, escolha as coordenadas para atirar: ", nome_player1);
                scanf(" %s", coordenadas);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                if (x >= 0 && x < 8 && y >= 0 && y < 8){
                    if(tabuleiro_p2[x][y] == 'O'){
                        jogo_p2[x][y] = 'X';
                        tabuleiro_p2[x][y] = 'X';
                        --navio_p2;
                        if(navio_p2==0){
                            break;
                        }
                    }else if(tabuleiro_p2[x][y]== 'X'){
                            printf("Você já atirou nessa coordenada!\n");
                            getchar();
                            getchar();
                          }else{
                            jogo_p2[x][y] = '@';
                          }
                }else{
                    printf("Coordenadas inválidas!\n");
                }

                system(CLEAR_SCREEN);
                printf("\n\t\t\t\t\t\tTabuleiro de %s", nome_player1);
                printf("\n\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
                printf("\n\t\t\t\t\t\t");
                for (int i = 0; i < 8; i++) {
                    printf("%c|", 65+i);
                    for (int j = 0; j < 8; j++) {
                        printf("%c ", jogo_p1[i][j]);
                    }
                    printf("\n\t\t\t\t\t\t");
                }

                printf("-----------------");
                printf("\n\t\t\t\t\t\tTabuleiro de %s", nome_player2);
                printf("\n\t\t\t\t\t\t  1 2 3 4 5 6 7 8");
                printf("\n\t\t\t\t\t\t");
                for (int i = 0; i < 8; i++) {
                    printf("%c|", 65+i);
                    for (int j = 0; j < 8; j++) {
                        printf("%c ", jogo_p2[i][j]);
                    }
                    printf("\n\t\t\t\t\t\t");
                }
                printf("\n");

                printf("\t\t\t\t\t\t%s, escolha as coordenadas para atirar: ", nome_player2);
                scanf(" %s", coordenadas);

                x = coordenadas[0] - 'A';
                y = coordenadas[1] - '1';

                if(x >= 0 && x < 8 && y >= 0 && y < 8){
                    if(tabuleiro_p1[x][y] == 'O'){
                        jogo_p1[x][y] = 'X';
                        tabuleiro_p1[x][y] = 'X';
                        --navio_p1;
                        if(navio_p1==0){
                            break;
                        }
                    }else if(tabuleiro_p1[x][y]== 'X'){
                            printf("Você já atirou nessa coordenada!\n");
                            getchar();
                            getchar();
                          }else{
                            jogo_p1[x][y] = '@';
                          }
                }else{
                    printf("Coordenadas inválidas!\n");
                }
            }
            system(CLEAR_SCREEN);
            if(navio_p1==0){
                printf("\n\n\n\n\n\n\n\n");
                printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                printf("\t\t\t\t\t\tParabéns %s, você venceu!\n", nome_player2);
                printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");

            }
            if(navio_p2==0){
                printf("\n\n\n\n\n\n\n\n");
                printf("\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
                printf("\t\t\t\t\tParabéns %s, você venceu!\n", nome_player1);
                printf("\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
            }
            printf("\t\t\t\t\tAperte Enter para voltar ao Menu");
            getchar();//quando apertar enter volta pro menu
            getchar();
            break;

        case 2: //criadores

            system(CLEAR_SCREEN); //limpa a tela
            printf("\n\n\n\n\n\n\n\n");
            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");
            printf("\t\t\t\t\t\t| Artur Araujo       |\n");
            printf("\t\t\t\t\t\t|  nUSP: 14651458    |\n");
            printf("\t\t\t\t\t\t|                    |\n");
            printf("\t\t\t\t\t\t| Leonardo Demore    |\n");
            printf("\t\t\t\t\t\t|  nUSP: 15674786    |\n");
            printf("\t\t\t\t\t\t|                    |\n");
            printf("\t\t\t\t\t\t| Luiz Correia       |\n");
            printf("\t\t\t\t\t\t|  nUSP: 15639682    |\n");
            printf("\t\t\t\t\t\t|                    |\n");
            printf("\t\t\t\t\t\t| Ana Paula de Abreu |\n");
            printf("\t\t\t\t\t\t|  nUSP: 12688424    |\n");
            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");
            getchar();//quando apertar enter volta pro menu
            break;

        case 3:
            system(CLEAR_SCREEN);
            printf("Batalha Naval\n\n"
       "Objetivo: Destruir todos os navios do oponente antes que ele destrua os seus.\n\n"
       "Regras:\n"
       "1. Posicionamento dos Navios: Posicione seus navios em um tabuleiro 8x8.\n"
       "   - Cada jogador tem 5 navios de duas células cada.\n"
       "   - Cada navio deve ocupar exatamente duas células.\n"
       "   - Para posicionar o navio coloque: coodenada da primeira parte 'espaço' coodenada da segunda parte.\n"
       "   - Não é permitido sobrepor navios.\n\n"
       "2. Ataque: Ataque o tabuleiro do oponente alternadamente.\n"
       "   - Escolha uma coordenada para atacar, informando letra e número.\n"
       "   - Se atingir um navio, ele é marcado com 'X'. Caso contrário, é marcado com '@'.\n\n"
       "3. Vitória: O jogo continua até que um jogador destrua todos os navios do oponente.\n\n"
       "Como Jogar:\n"
       "1. Insira os nomes dos jogadores.\n"
       "2. Posicione seus navios quando solicitado.\n"
       "3. Ataque o tabuleiro do oponente informando as coordenadas.\n"
       "4. O jogo termina quando todos os navios de um jogador forem destruídos.\n");

            getchar();
            break;
        case 4:
            break;
        default: //caso aperte uma tecla inválida

            system(CLEAR_SCREEN); //limpa a tela
            printf("\n\n\n\n\n\n\n\n");
            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");
            printf("\t\t\t\t\t\t  Comando Invalido!   \n");
            printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");
            getchar();//quando apertar enter volta pro menu
        }
    } //fim do while (fim do jogo)

    //mensagem final
    system(CLEAR_SCREEN); //limpa a tela
    printf("\n\n\n\n\n\n\n\n");
    printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");
    printf("\t\t\t\t\t\t  Obrigado por jogar! \n");
    printf("\t\t\t\t\t\t~~~~~~~~~~~~~~~~~~~~~~\n");

return 0;
}
