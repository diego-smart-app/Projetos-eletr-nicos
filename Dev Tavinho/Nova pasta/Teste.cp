#line 1 "C:/Users/Diego/Documents/Projetos eletrônicos/Dev Tavinho/Nova pasta/Teste.c"




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
