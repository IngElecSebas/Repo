#include    <xc.h>
#include    <pic16f887.h>
#include    "CONFIG.h"
#include    "LCD.h"

unsigned int value_adc = 0;//16 bits
unsigned char counter_digito = 0;
double temp = 0.0;
unsigned char lm35 = 0;
unsigned int luz = 0;   

// Prototipos de funciones
unsigned int leer_temperatura(void);
unsigned int leer_luz(void);

void main(void) {
    //OSCCON = 0b01110001;
    OSCCON = 0x71;
    TRISA0 = 1;   // RA0 (AN0) como entrada para el sensor de temperatura
    TRISA1 = 1;   // RA1 (AN1) como entrada para el sensor de luz
    ANSEL = 0x03; //  Configura el Puerto como Entrada Analógica.

    ADCON1bits.ADFM = 1; //  Justificación Derecha (modo-8bits).
    ADCON1bits.VCFG0 = 0; //  Selecciona Voltajes de Referencia (5v-0v).
    ADCON1bits.VCFG1 = 0;
    ADCON0bits.ADCS = 0b01; //  Tiempo de Conversión Fosc/8.
       
    ADCON0bits.ADON = 1; //  Habilita el Módulo AD.
    __delay_us(30);
    
    // Inicialización del LCD
    LCD_Init();  // Inicializar el LCD
    LCD_Clear(); // Limpiar la pantalla del LCD
    
    while (1) {
        leer_temperatura();  // Leer y mostrar la temperatura en el LCD
        leer_luz();          // Leer y mostrar la luz en el LCD
        __delay_ms(1000);    // Espera de 1 segundo entre lecturas
    }
}
unsigned int leer_temperatura(void) {
    ADCON0bits.CHS = 0b0000;  // Selecciona el canal AN0 (RA0) para el sensor de temperatura
    __delay_us(30);           // Pequeño retardo para estabilizar el canal
    
    // Inicia la conversión ADC
    ADCON0bits.GO_DONE = 1;
    while (ADCON0bits.GO_DONE);  // Espera a que termine la conversión
    
    // Lectura del valor ADC
    value_adc = ((unsigned int)ADRESH << 8) + ADRESL;  // Combina los 10 bits del ADC
    
    // Convertir el valor ADC a temperatura en grados Celsius
    temp = value_adc;
    temp = (temp * 500.0) / 1023.0;  // Fórmula para convertir el valor ADC en grados Celsius (LM35)
    lm35 = (unsigned char)temp;  // Convertir a char para mostrarlo

    // Mostrar la temperatura en el LCD
    LCD_String_xy(0, 0, "Temp: ");  // Imprimir "Temp: " en la primera línea
    LCD_Char(lm35 / 10 + '0');      // Mostrar decenas de la temperatura
    LCD_Char(lm35 % 10 + '0');      // Mostrar unidades de la temperatura
    LCD_Char('C');                  // Mostrar el símbolo de grados Celsius

    return lm35;  // Retorna el valor de temperatura
}

unsigned int leer_luz(void) {
    ADCON0bits.CHS = 0b0001;  // Selecciona el canal AN1 (RA1) para el sensor de luz
    __delay_us(30);           // Pequeño retardo para estabilizar el canal
    
    // Inicia la conversión ADC
    ADCON0bits.GO_DONE = 1;
    while (ADCON0bits.GO_DONE);  // Espera a que termine la conversión
    
    // Lectura del valor ADC
    value_adc = ((unsigned int)ADRESH << 8) + ADRESL;  // Combina los 10 bits del ADC
    luz =((value_adc * 100) / 1023);  // Normaliza el valor de luz en porcentaje

    // Mostrar la luz en el LCD
    LCD_String_xy(1, 0, "Luz: ");  // Imprimir "Luz: " en la segunda línea del LCD
    LCD_Char((unsigned char)(luz / 10) + '0');  // Mostrar decenas del porcentaje de luz
    LCD_Char((unsigned char)(luz % 10) + '0');  // Mostrar unidades del porcentaje de luz
    LCD_Char('%');                 // Mostrar el símbolo de porcentaje

    return luz;  // Retorna el valor de luz
}

