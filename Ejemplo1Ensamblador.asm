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

	mov eax, 4	     ; llamada al sistema sys write
	mov cbx, 1	     ; std out 
	mov ecx, mensaje ; mensaje e pantalla
	mov edx, len     ; longitud del mensaje

	int 0x80	; Llamada al sistema de interrupciónes
	mov eax, 1	; salir del programa 