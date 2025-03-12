
_main:

;Pulso.c,5 :: 		void main(void)
;Pulso.c,7 :: 		TRISIO = 0b00000;
	CLRF       TRISIO+0
;Pulso.c,8 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Pulso.c,13 :: 		for(n = 1; n < 20; n++)
	MOVLW      1
	MOVWF      R1+0
L_main2:
	MOVLW      20
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;Pulso.c,15 :: 		GPIO = 0b00001;
	MOVLW      1
	MOVWF      GPIO+0
;Pulso.c,16 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;Pulso.c,17 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Pulso.c,18 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;Pulso.c,13 :: 		for(n = 1; n < 20; n++)
	INCF       R1+0, 1
;Pulso.c,19 :: 		}
	GOTO       L_main2
L_main3:
;Pulso.c,20 :: 		for(n = 1; n < 30; n++)
	MOVLW      1
	MOVWF      R1+0
L_main7:
	MOVLW      30
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;Pulso.c,22 :: 		GPIO = 0b00001;
	MOVLW      1
	MOVWF      GPIO+0
;Pulso.c,23 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;Pulso.c,24 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Pulso.c,25 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;Pulso.c,20 :: 		for(n = 1; n < 30; n++)
	INCF       R1+0, 1
;Pulso.c,26 :: 		}
	GOTO       L_main7
L_main8:
;Pulso.c,27 :: 		for(n = 1; n < 50; n++)
	MOVLW      1
	MOVWF      R1+0
L_main12:
	MOVLW      50
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main13
;Pulso.c,29 :: 		GPIO = 0b00001;
	MOVLW      1
	MOVWF      GPIO+0
;Pulso.c,30 :: 		delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
;Pulso.c,31 :: 		GPIO = 0b00000;
	CLRF       GPIO+0
;Pulso.c,32 :: 		delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;Pulso.c,27 :: 		for(n = 1; n < 50; n++)
	INCF       R1+0, 1
;Pulso.c,33 :: 		}
	GOTO       L_main12
L_main13:
;Pulso.c,35 :: 		}
L_main1:
;Pulso.c,37 :: 		GPIO = 0b00001;
	MOVLW      1
	MOVWF      GPIO+0
;Pulso.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
