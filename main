;Estructura de Microprocesadores
;Juego de puntos extras

;-------------------------  MACRO #1  ----------------------------------
%macro imprime 2 	;recibe 2 parametros
	mov rax,1	;sys_write
	mov rdi,1	;std_out
	mov rsi,%1	;primer parametro: Texto
	mov rdx,%2	;segundo parametro: Tamano texto
	syscall
%endmacro

;-------------------------  MACRO #2  ----------------------------------
%macro leer 2 	;recibe 2 parametros
	mov rax,0	;sys_read
	mov rdi,0	;std_input
	mov rsi,%1	;primer parametro: Variable
	mov rdx,%2	;segundo parametro: Tamano 
	syscall
%endmacro


;#################################################################################################################
%include "Macros.mac" ;Inclusión del archivo que contiene los macros


section .data

	bienvenidos: db '                                                    Bienvenidos el juego Super Gato 2017',0xa
	bienvenidos_size: equ $-bienvenidos 
	curso: db '                                                       Estructura de Microprocesadores',0xa
	curso_size: equ $-curso
	inst: db '                                                         Seleccione una opcion:'
	inst_size: equ $-inst
	opcion1: db '               1. Iniciar Juego',0xa
	opcion1_size: equ $-opcion1
	opcion2: db '               2. Credito',0xa
	opcion2_size: equ $-opcion2
	opcion3: db '               3. Salir',0xa
	opcion3_size: equ $-opcion3
	limpiar    db 0x1b, "[2J", 0x1b, "[H"
	tam_limpias equ $-limpiar
	ingreso: db ''
	reingreso: db 'a'
	cred: db '                                                       Este trabajo fue diseñado por:',0xa
	cred_size: equ $-cred	
	cred1: db '    **Emmanuel Araya Gamboa**',0xa
	cred1_size: equ $-cred1
	cred2: db '    **Andrés Arroyo Romero**',0xa
	cred2_size: equ $-cred2
	cred3: db '    **Fabiola Marín***',0xa
	cred3_size: equ $-cred3
	return: db 'Desea regresar al menu principal-(1-SI)-(2-NO):'
	return_size: equ $-return
	ending: db '                                                      GRACIAS POR JUGAR XD',0xa
	ending_size: equ $-ending
	encabe1: db 'VICTORIAS JUGADOR 1:',0xa
	encabe1_size: equ $-encabe1
	encabe2: db 'VICTORIAS JUGADOR 2:',0xa
	encabe2_size: equ $-encabe2
	begin1: db 'REGLAS:  Cada una de las 9 casillas a continuación se enumeraran de izquierda a derecha de manera numericamente ascendetemente. Esto empezando por la fila superior',0xa
	begin1_size: equ $-begin1
	

	line1: db '                                         *****                                          *****                ',0xa
	line1_size: equ $-line1
	verti: db '                   **************************************************************************************************',0xa
	verti_size: equ $-verti

	;Datos necesarios para los macros
  	termios:        times 36 db 0		;Estructura de 36bytes que contiene el modo de operacion de la consola
  	stdin:          equ 0			;Standard Input (se usa stdin en lugar de escribir manualmente los valores)
  	ICANON:         equ 1<<1		;ICANON: Valor de control para encender/apagar el modo canonico
  	ECHO:           equ 1<<3


section .text
	global _start
_start:

	canonical_off ICANON,termios          ;Desactiva tener que apretar enter despues de ingresar un dato
	imprime limpiar,tam_limpias	      ;Limpia la pantalla
	imprime bienvenidos,bienvenidos_size  ;Imprime informacion del menú
	imprime curso,curso_size
	imprime opcion1,opcion1_size
	imprime opcion2,opcion2_size
	imprime opcion3,opcion3_size
	imprime inst,inst_size
	leer ingreso,1			      ;Lee dato ingresado por el usuario
	mov r12b, [rsi]
	mov r9b,'1'			      ;Se incertan datos comparativos
	mov r10b,'2'
	mov r11b,'3'
	cmp r12b,r9b
	je game
	cmp r12b,r10b
	je creditos
	cmp r12b,r11b
	je end



game:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size			
	imprime return,return_size
	leer ingreso,1
	mov r12b,[rsi]
	mov r9b,'1'
	mov r10b,'2'
	cmp r12b,r9b
	je _start
	jmp end
	

creditos:
	imprime limpiar, tam_limpias
	imprime cred,cred_size
	imprime cred1,cred1_size
	imprime cred2,cred2_size
	imprime cred3,cred3_size
	imprime return,return_size
	leer ingreso,1
	mov r12b,[rsi]
	mov r9b,'1'
	mov r10b,'2'
	cmp r12b,r9b
	je _start
	
end:
	imprime limpiar, tam_limpias
	imprime ending,ending_size
	canonical_on ICANON,termios     ;Vuelve a encender el modo canonical
	mov rax,60	;se carga la llamada 60d (sys_exit) en rax
	mov rdi,0	;en rdi se carga un 0
	syscall	


section .bss
