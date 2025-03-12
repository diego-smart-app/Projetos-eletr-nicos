// Projeto de teste com o Tavinho
// Data início: 10/03/2025
// Autor: Diego Ribeiro / Tavinho

void main(void)
{
     TRISIO = 0b00000;
     GPIO = 0b00000;

     while (1)
     {
      GPIO = 0b00001;
      delay_ms(500);
      GPIO = 0b00000;
      delay_ms(500);
     }
}