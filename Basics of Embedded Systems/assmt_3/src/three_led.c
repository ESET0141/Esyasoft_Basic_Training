
#include <avr/io.h>
#include <util/delay.h>

#define LED_1 PD2
#define LED_2 PD5
#define LED_3 PD7
#define BUTTON PD6

int main(){
 DDRD |= (1 << LED_1);
 DDRD |= (1 << LED_2);
 DDRD |= (1 << LED_3);
//  DDRD &= (1 << BUTTON);

PORTD |= (1 << LED_1);
PORTD &= ~(1 << LED_2);

_delay_ms(1000);

PORTD &= ~(1 << LED_1);
PORTD |= (1 << LED_2);

    while(1){
        PORTD ^= (1 << LED_3);
        _delay_ms(200);
    };

}