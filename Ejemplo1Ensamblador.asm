section .data

mensaje db "HOLA MUNDO... BIENVENIDOS !!!", 0xA, 0xD	; 10,13 espacio y salto

len equ $ - mensaje 	; directiva propio del ensamblador
; db byte 
; dw palabra
; dd palabra doble
 ;dq palabra cuadruple
; dt diez bytes

section .text

; etiqueta global 
	global _start 	; propio de nasm
	_start: 
	