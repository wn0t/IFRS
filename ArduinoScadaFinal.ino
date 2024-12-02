/*
            IFRS - Automação Industrial Subsequente
                      Projeto com Arduino
          Cooler com LED e integração no Elipse Scada
          Participantes: Gustavo, Jaqueline e Michael.
*/
#include <Modbusino.h>

// Sensores 
int LDR_0 = A0;  // Pinos
int LED_1 = 9;
int cooler = 10;
int botao = 2;

// Variáveis
int valor_LDR_0;
int estado_botao;
int comando_cooler; // Comando do SCADA para o cooler

// Iniciando slave no id 1
ModbusinoSlave modbusino_slave(1);
// Alocando 6 valores 
uint16_t tab_reg[6];

void setup() {
    pinMode(LED_1, OUTPUT);
    pinMode(cooler, OUTPUT);
    pinMode(botao, INPUT_PULLUP); // Botão com pull-up interno
    modbusino_slave.setup(9600); // Comunicação Modbus
    delay(100);
}

void loop() {
    // Ler sensores e botão
    valor_LDR_0 = analogRead(LDR_0);
    estado_botao = digitalRead(botao); // LOW = pressionado
    comando_cooler = tab_reg[2];       // Comando do SCADA para o cooler

    // Controle do cooler
    if (estado_botao == LOW) {
        // Se o botão for pressionado, liga o cooler manualmente
        digitalWrite(cooler, HIGH); 
    } else {
        // Caso contrário, o SCADA controla o cooler
        if (comando_cooler == 1) {  // SCADA liga o cooler
            digitalWrite(cooler, HIGH);
        } else if (valor_LDR_0 > 600) { // Controle por luminosidade (acima de 600)
            digitalWrite(cooler, HIGH);
        } else {
            digitalWrite(cooler, LOW);
        }
    }

    // Controle do LED baseado na luminosidade
    if (valor_LDR_0 <= 600) {
        digitalWrite(LED_1, HIGH); // Liga o LED
    } else {
        digitalWrite(LED_1, LOW); // Desliga o LED
    }

    // Atualizar os registradores
    tab_reg[0] = valor_LDR_0;  // Luminosidade
    tab_reg[1] = (estado_botao == LOW) ? 1 : 0; // Estado do botão (1 se pressionado, 0 se não)
    tab_reg[4] = (digitalRead(LED_1) == HIGH) ? 1 : 0; // Estado do LED (1 = ligado, 0 = desligado)
    tab_reg[5] = (digitalRead(cooler) == HIGH) ? 1 : 0; // Estado do Cooler (1 = ligado, 0 = desligado)

    // Enviar dados para o SCADA
    modbusino_slave.loop(tab_reg, 6); // 6 registradores
}
