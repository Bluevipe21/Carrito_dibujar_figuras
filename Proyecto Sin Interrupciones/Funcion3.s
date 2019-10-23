;Se deben utilizar resistencias PULL-DOWN




PA2       EQU 0x40004010
PA5       EQU 0x40004080
PA6       EQU 0x40004100
PA7       EQU 0x40004200
FIVESEC    EQU 26666667      ; approximately 5s delay at ~16 MHz clock
THREESEC	EQU 16000000
TWOSEC EQU 5000000
ONESEC EQU 2666667 ;Tiempo para los giros de 90 grados
;Registros para puerto D
LEDS               EQU 0x4000703C   ; Acceso a PD3-PD0
;PD0 enciende con 0x01	----	IN1
;PD1 enciende con 0x02   ---	IN2
;PD2 enciende con 0x04	----	IN3
;PD3 enciende con 0x08	----	IN4
IN1 	EQU 0x01
IN2 	EQU 0x02
IN3 	EQU 0x04
IN4 	EQU 0x08
APAGAR EQU 0x00


;Registros para puerto F	
GPIO_PORTF_DATA_R  EQU 0x400253FC


GREEN     EQU 0x08		
		AREA    |.text|, CODE, READONLY, ALIGN=2
        THUMB
		EXPORT PA6PRESSED
		IMPORT PortF_Output
		IMPORT delay
		IMPORT Loop
PA6PRESSED
	MOV R4,#0
	MOV R4,#GREEN						;se enciende el led azul PF2
	BL PortF_Output
	NOP
    NOP
	LDR R0,=FIVESEC					;Asigna valor de retardo
	BL delay						;Ejecuta el retardo
	;Aqui comenzar la funcion
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=2500000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN1)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=4100000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=TWOSEC
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=3700000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=2500000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN4+IN1)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=4800000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=3000000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN1)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=4300000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=2800000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN1)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=4300000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=2500000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=4300000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=2200000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN4+IN1)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=5200000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=2200000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN1)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=4000000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=TWOSEC
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Giro
	LDR R1,=(IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=4000000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	;Mover recto
	LDR R1,=(IN1+IN3)
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]                    ; [R0] = R1 = 9 PD0 ENCIENDE - IN4
	LDR R0,=2500000
	BL delay
	LDR R1,=APAGAR
	LDR R0, =LEDS ;se asigna R0 como registro de control para los puertos D
	STR R1, [R0]
	
	MOV R4,#0						;se asigna 0 al valor de salida de PF2
	BL PortF_Output					;establece valor de salida de PF2
	BL Loop		
		
		ALIGN
		END