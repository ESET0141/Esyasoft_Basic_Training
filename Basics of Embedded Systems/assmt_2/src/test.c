#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4 // port D set to 4
#define PUSH_BUTTON PD5  

int main(void){
    DDRD |= (1 << LED_PIN);  //assigning DDRD as o/p register
    DDRD &= ~(1 << PUSH_BUTTON);
    PORTD |= (1 << PUSH_BUTTON);


    while(1){
     
      if(!(PIND & (1 << PUSH_BUTTON))){
          //LED ON 
          PORTD |= (1<< LED_PIN);
          //Delay 500ms
          _delay_ms(250);

          PORTD &= ~(1<< LED_PIN);
          _delay_ms(250);
      }
      
      else{
          PORTD &= ~(1<< LED_PIN);
      }
      
    }
    return 0;
}