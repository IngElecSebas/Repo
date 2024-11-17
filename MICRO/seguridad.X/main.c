/*!
\file   KEYPAD.h
\date   2024-09-30
\author Johan Paladinez y Sebastian Torres <johandiaz@unicauca.edu.co>
\brief  Functions Handler Keypad 4x4.

\par Copyright
Information contained herein is proprietary to and constitutes valuable
confidential trade secrets of unicauca, and
is subject to restrictions on use and disclosure.

\par
Copyright (c) unicauca 2024. All rights reserved.

\par
The copyright notices above do not evidence any actual or
intended publication of this material.
******************************************************************************
*/
#include <xc.h>
#include <pic16f887.h>  // Header file PIC16f887 definitions
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "CONFIG.h"
#include "LCD.h"
#include "KEYPAD.h"
#include "adc.h" 
#include "timer.h"
 
enum estado{
    INIT,
    MONITOREO_AMBIENTAL,
    MONITOREO_EVENTOS,
    ALARMA,
    ALERTA,
    BLOQUEADO
};

enum estado estadoactual = INIT;

// Funciones
void secuencia1(void);
void secuencia5(void);


unsigned char efecto = 1;
unsigned long velocidad = 1;
const char password[6] ={'2','0','2','1','1',0};
char StringTemperature[32];
char key = '0';
char pass_user[5];
unsigned char idx = 0;
int intentos = 0;
int temp;
unsigned int luz ;
int puerta_ventana;
unsigned int boton_reset;
int clavecorrecta;
int sis_bloqueado;
int count_3sec;
int flag_count_3sec;
int count_5sec;
int flag_count_5sec;
int count_10sec;
int flag_count_10sec;
int count_800ms;
int flag_count_800ms;
int flag_count_500ms;
int count_500ms;

// Definición de los pines de los LEDs
#define LED_VERDE PORTEbits.RE1
#define LED_AZUL PORTEbits.RE2
#define LED_ROJO PORTEbits.RE0
#define TIMEOUT_3000 3000
#define TIMEOUT_5000 5000
#define TIMEOUT_800 800
#define TIMEOUT_500 500

//------------------------------- Funciones Complemento-------------------------

void __interrupt() Timer1_ISR()
{
    TMR1=0xFC16;
    count_3sec++;
    if(count_3sec > TIMEOUT_3000){
        count_3sec = 0;
        flag_count_3sec = 1;
    }
    
    count_5sec++;        
    if(count_5sec > TIMEOUT_5000){
        count_5sec = 0;
        flag_count_5sec = 1;
    }
    
    count_10sec++;        
    if(count_10sec > TIMEOUT_5000){
        count_10sec = 0;
        flag_count_10sec = 1;
    }
    
    count_800ms++;        
    if(count_800ms > TIMEOUT_800){
        count_800ms = 0;
        flag_count_800ms = 1;
    }
    
    count_500ms++;        
    if(count_500ms > TIMEOUT_500){
        count_500ms = 0;
        flag_count_500ms = 1;
    }
    //Pulse = ~Pulse;    /* Toggle Value at PortB to generate waveform of 500 Hz */   
    PIR1bits.TMR1IF=0; /* Make Timer1 Overflow Flag to '0' */
}

void delay_ms_variable(unsigned int ms) {
    while (ms--) {
        __delay_ms(1);  // Llamada a __delay_ms con un valor constante
    }
}

// Prototipos de funciones
void blink_led(unsigned char led, unsigned int on_time, unsigned int off_time, unsigned int duration) {
    unsigned int elapsed_time = 0;

    while (elapsed_time < duration) {
        if (led == 'V') {
            LED_VERDE = 1;  // Enciende LED verde
        } else if (led == 'A') {
            LED_AZUL = 1;   // Enciende LED amarillo
        } else if (led == 'R') {
            LED_ROJO = 1;   // Enciende LED rojo
        }
        delay_ms_variable(on_time);

        // Apagar LED
        if (led == 'V') {
            LED_VERDE = 0;
        } else if (led == 'A') {
            LED_AZUL = 0;
        } else if (led == 'R') {
            LED_ROJO = 0;
        }
        delay_ms_variable(off_time);

        elapsed_time += on_time + off_time;
    }
}

void secuencia1(void){
volatile unsigned int var3 = 0xA0,var4 = 0x01,var5 = 0;
for (int i = 0; i < 2; i++) {
        var5 = var3 | var4;
        PORTD = (unsigned char)(var5);  
        __delay_ms(500);                

        // Desplazamiento de var1 y var2
        var3 = var3 >> 1; // Desplaza var1 a la derecha
        var4 = var4 << 1; // Desplaza var2 a la izquierda

        // Nueva operación OR entre var1 y var2
        var5 = var3 | var4;
        PORTD = (unsigned char)(var5); // Se coloca el resultado en PORTD
        __delay_ms(500);                // Retardo de 500 ms

        // Última operación OR y desplazamiento
        var5 = var3 | var4;
        var3 = var3 << 1; // Desplaza var1 a la izquierda
        var4 = var4 << 1; // Desplaza var2 nuevamente a la izquierda
    }
}

void secuencia5(void){
volatile unsigned int var1=0xA0,var2=0x01,var12 = 0;
    for (int i = 0; i < 2; i++) {
        var12 = var1 | var2;
        PORTD = (unsigned char)(var12);
        __delay_ms(500);
        var1 = var1 >> 1;
        var2 = var2 << 1;
        var12 = var1 | var2;
        PORTD = (unsigned char)(var12);
        __delay_ms(500);
        var12 = var1 | var2;
        var1 = var1 << 1;
        var2 = var2 << 1;
    }
       volatile unsigned int var6=0xA0,var7=0x08,var8 = 0;
    for (int i = 0; i < 2; i++){
        var8 = var6 | var7;
        PORTD = (unsigned char)(var8);
        __delay_ms(500);
        var6 = var6 >> 1;
        var7 = var7 >> 1;
        var8 = var6 | var7;
        PORTD = (unsigned char)(var8);
        __delay_ms(500);
        var8 = var6 | var6;
        var6 = var6 << 1;
        var7 = var7 >> 1;
    }
}
// ------------------- Funciones de Cada Estado------------------------------
void funcion_seguridad(void){
    LCD_Clear();  
    
    LCD_String_xy(0,0,"Press a Key     ");
        LCD_Command(0xc0);
        do {
                key = keypad_getkey();
                if (key != 0) {
                    LCD_Char('*');  // Mostrar '*' en vez del carácter real
                    pass_user[idx++] = key;
                }
            
        }while(idx < 5);
        
        if(strncmp(pass_user,password,4)==0){
            LCD_Clear();
            LCD_String_xy(0,0,"Clave Correcta");
            LCD_Char(1);
            blink_led('V', 500, 500, 3000);  // Parpadear LED verde por 3 segundos
            intentos = 0;
            
            clavecorrecta=1;  //%%%%% BANDERA %%%%%
        }
        else{
            LCD_Clear();
            LCD_String_xy(0,0,"Clave Incorrecta"); 
            LCD_Char(2);
            clavecorrecta=0;  //%%%%% BANDERA %%%%%
            sis_bloqueado=0;  //%%%%% BANDERA %%%%%
            blink_led('A', 300, 700, 2000);  // Parpadear LED rojo por 2 segundos
            intentos = intentos + 1;
            if(intentos ==3){
                sis_bloqueado=1;  //%%%%% BANDERA %%%%%
                LCD_Clear();
                LCD_String_xy(0,0,"sistema bloqueado");
                LCD_Char(0);
                blink_led('R', 300, 500, 3000);  // Parpadear LED amarillo por 3 segundos
                intentos = 0;  // Reiniciar intentos después del bloqueo
            }
        }
        __delay_ms(2000);
        LCD_Clear();
        idx = 0;   
}

void funcion_monitoreo_ambiental(void){
        LCD_Clear();
        LCD_String_xy(0,0,"AMBIENTAL");
        LCD_Command(0xC0);
        unsigned int temperatura = adc_read(0);
        luz = adc_read(1);                     //%%%%%%%% se puede poner de tipo int??????????%%%%%%%%%%

        //celsius = (temperatura*4.88);
        //celsius = (celsius/10.00);
        //sprintf(StringTemperature,"TEMP %.2f %cC  ", celsius,0xdf); //convert integer value to ASCII string 

        int value_adc = 1023 - (int)temperatura; //Calcular valor del sensor 
        temp = (int)(value_adc * 0.04058); // Convertir a temperatura 
        sprintf(StringTemperature, "TEMP: %d  L: %d", temp, luz);  //convert integer value to ASCII string 
        //LCD_String_xy(1,0,StringTemperature);
        LCD_String(StringTemperature);
        __delay_ms(500);
}

void funcion_monitoreo_eventos(void){
    
    unsigned char ir, hall;
    
    ir = PORTAbits.RA2;
    hall = PORTAbits.RA3;
    LCD_Clear();
    LCD_String_xy(0,0,"EVENTOS");
    LCD_Command(0xC0);
    sprintf(StringTemperature, "PU: %d  VE: %d", ir, hall);
    LCD_String(StringTemperature);
    __delay_ms(500);
    
    if (PORTAbits.RA2 == 1 && PORTAbits.RA3 == 1){
        puerta_ventana = 1;
    }
    else {
        puerta_ventana = 0;
    }
    __delay_ms(500);
}
void funcion_buzzer(void){
    // Configurar el pin RA5 (AN5) como salida
    TRISAbits.TRISA5 = 0;  // 0 = salida, 1 = entrada
    ANSELbits.ANS5 = 0;  // Desactivar la función analógica en AN5
    
    // Poner el pin RA5 en alto
    PORTAbits.RA5 = 1;
}



//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& Función principal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

int main(void){
    OSCCON = 0x71;
    LCD_Init(); //Inicializa el LCD
    LCD_String_xy(0,0,"BIENVENIDO"); // Prueba LCD
    __delay_ms(2000);
    LCD_Clear();

    keypad_init(); //Inicializa el teclado
    LCD_Load_Custom_Chars();
    adc_init();  // Inicializa el ADC
    
    TRISE = 0;
    TRISD = 0;
    PORTD = 0;
    TRISC3 = 1;
    TRISAbits.TRISA0 = 1;
    TRISAbits.TRISA1 = 1;
    
    TRISAbits.TRISA2 = 1;
    ANSELbits.ANS2 = 0;  // Configurar RA2 como digital
    TRISAbits.TRISA3 = 1;
    ANSELbits.ANS3 = 0;  // Configurar RA3 como digital
    
    
    Timer1_start();
    
    while(1){
        //%%%%%%%%%%%%%%%%%%%%%%%%% Estados %%%%%%%%%%%%%%%%%%%%%%%%
        switch (estadoactual){
            case INIT:
                funcion_seguridad();
                if(clavecorrecta==1){
                    count_5sec=0;
                    flag_count_5sec=0;
                    estadoactual = MONITOREO_AMBIENTAL;
                }else if(sis_bloqueado==1){
                    estadoactual = BLOQUEADO;
                }
                break;
            case MONITOREO_AMBIENTAL:
                // Poner el pin RA5 en bajo
                PORTAbits.RA5 = 0;
                
                funcion_monitoreo_ambiental();
                if(temp>37 && luz>480){
                    estadoactual = ALARMA;
                    count_3sec=0;
                    flag_count_3sec=0;
                }else if(flag_count_5sec == 1){
                    estadoactual = MONITOREO_EVENTOS;
                    flag_count_3sec=0;
                    count_3sec=0;
                    flag_count_5sec=0;
                } 
                break;
            case MONITOREO_EVENTOS:
                funcion_monitoreo_eventos();
                if(puerta_ventana==1){
                    estadoactual = ALERTA;
                }else if(flag_count_3sec==1){
                    count_5sec=0;
                    estadoactual = MONITOREO_AMBIENTAL;
                    flag_count_3sec =0;
                }
                break;
            case ALARMA:
                funcion_buzzer();
                if(flag_count_3sec==1){
                    estadoactual = MONITOREO_AMBIENTAL;
                    flag_count_3sec=0;
                    count_5sec=0;
                }
                break;
            case ALERTA:
                boton_reset = PORTCbits.RC3;
                if(boton_reset==1){
                    estadoactual = INIT;
                }
                break;
            case BLOQUEADO:
                secuencia1();
                secuencia5();
                estadoactual = INIT;
                break;
        }
    }
    return 1;
}