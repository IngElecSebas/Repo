#include <xc.h>
#include <pic16f887.h>  //Header file PIC18f4550 definitions
#include "CONFIG.h"		/* Configuration header file */
#include "timer.h"

//#define _XTAL_FREQ 4000000//frecuencia del oscilador
//TMR1=65535-(delay)(1Mhz)/8 -1

void Timer1_start(void){
    GIE=1;              /* Enable Global Interrupt */
    PEIE=1;             /* Enable Peripheral Interrupt */
    TMR1IE=1;           /* Enable Timer1 Overflow Interrupt */
    TMR1IF=0;
    T1CON=0x00;         /* Enable 16-bit TMR1 Register,No pre-scale,use internal clock,Timer OFF */
    TMR1=0xFC16;        /* Load Count for generating delay of 1ms */
    TMR1ON=1;           /* Turn-On Timer1 */
}
