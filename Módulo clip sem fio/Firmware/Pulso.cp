#line 1 "C:/Users/Diego/Documents/Projetos eletrônicos/Módulo clip sem fio/Firmware_1/Pulso.c"




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
