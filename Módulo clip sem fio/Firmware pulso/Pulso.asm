
_main:

;Pulso.c,5 :: 		void main(void)
;Pulso.c,7 :: 		TRISIO = 0b00000;
	CLRF       TRISIO+0
;Pulso.c,8 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Pulso.c,10 :: 		GPIO = 0b00001;
	MOVLW      1
	MOVWF      GPIO+0
;Pulso.c,11 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;Pulso.c,12 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Pulso.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
