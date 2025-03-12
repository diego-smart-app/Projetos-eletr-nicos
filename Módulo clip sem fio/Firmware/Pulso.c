// Projeto de acionamento de módulo clip usando RF 433MHz
// Data início: 11/02/2025
// Autor: Diego Ribeiro

void main(void)
{
     TRISIO = 0b00000;
     GPIO = 0b00000;

     while (1)
     {
       unsigned char n;
       for(n = 1; n < 20; n++)
         {
           GPIO = 0b00001;
           delay_ms(200);
           GPIO = 0b00000;
           delay_ms(200);
         }
       for(n = 1; n < 30; n++)
         {
           GPIO = 0b00001;
           delay_ms(100);
           GPIO = 0b00000;
           delay_ms(100);
         }
       for(n = 1; n < 50; n++)
         {
           GPIO = 0b00001;
           delay_ms(50);
           GPIO = 0b00000;
           delay_ms(50);
         }
       break;
     }

     GPIO = 0b00001;

}