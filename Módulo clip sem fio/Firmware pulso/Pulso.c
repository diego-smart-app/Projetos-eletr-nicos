// Projeto de acionamento de m�dulo clip usando RF 433MHz
// Data in�cio: 11/02/2025
// Autor: Diego Ribeiro

void main(void)
{
     TRISIO = 0b00000;
     GPIO = 0b00000;

     GPIO = 0b00001;
     delay_ms(1000);
     GPIO = 0b00000;

}