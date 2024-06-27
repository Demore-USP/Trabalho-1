#include <stdio.h>

// Definições de registradores e memória
#define RY 1
#define RZ 2
#define RX 0
#define SLI 38
#define STATE_FETCH 1
#define STATE_DECODE 2
#define STATE_EXECUTE 3
#define STATE_HALTED 5

// Simulação de registradores e memória
int registradores[8] = {0};
int estado = STATE_FETCH;
int selM3, selM4, OP, selM2, LoadReg[8] = {0}, selM6, LoadFR;
int program_counter = 0;
int memoria_programa[256] = {0};

// Função de simulação do processador
void simular_processador() {
    while (estado != STATE_HALTED) {
        switch (estado) {
            case STATE_FETCH:
                // Fetch da instrução (simulado)
                OP = memoria_programa[program_counter];
                estado = STATE_DECODE;
                break;

            case STATE_DECODE:
                switch (OP) {
                    case SLI: // Shift Left Indireto
                        selM3 = registradores[RY];
                        selM4 = registradores[RZ];
                        LoadReg[RX] = 1;
                        selM6 = registradores[RZ];
                        LoadFR = 1;
                        estado = STATE_EXECUTE;
                        break;

                    default:
                        estado = STATE_HALTED;
                        break;
                }
                break;

            case STATE_EXECUTE:
                if (LoadReg[RX]) {
                    registradores[RX] = selM3 << selM4;
                }
                estado = STATE_HALTED;
                break;
        }
    }
}

int main() {
    // Inicializando registradores com valores de teste
    registradores[RY] = 4; // Valor de ry
    registradores[RZ] = 2; // Valor de rz

    // Carregando a instrução SLI na memória do programa
    memoria_programa[0] = SLI;

    // Simulando o processador
    simular_processador();

    // Imprimindo o resultado
    printf("Resultado de SLI: %d\n", registradores[RX]);
    return 0;
}