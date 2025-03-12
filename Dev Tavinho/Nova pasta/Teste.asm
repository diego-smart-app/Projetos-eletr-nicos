
_main:

;Teste.c,5 :: 		void main(void)
;Teste.c,7 :: 		TRISIO = 0b00000;
	CLRF       TRISIO+0
;Teste.c,8 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Teste.c,10 :: 		while (1)
L_main0:
;Teste.c,12 :: 		GPIO = 0b00001;
	MOVLW      1
	MOVWF      GPIO+0
;Teste.c,13 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Teste.c,14 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Teste.c,15 :: 		delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Teste.c,16 :: 		}
	GOTO       L_main0
;Teste.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
