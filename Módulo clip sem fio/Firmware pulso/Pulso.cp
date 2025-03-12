#line 1 "C:/Users/Diego/Documents/Projetos eletrônicos/Módulo clip sem fio/Firmware pulso/Pulso.c"




void main(void)
{
 TRISIO = 0b00000;
 GPIO = 0b00000;

 GPIO = 0b00001;
 delay_ms(1000);
 GPIO = 0b00000;

}
