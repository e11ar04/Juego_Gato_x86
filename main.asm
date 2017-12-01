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
	juega1: db 'JUGADOR 1 ----> SELECCIONE EL NUMERO CASILLA DONDE DESEA JUGAR:'
	juega1_size: equ $-juega1
	juega2: db 'JUGADOR 2 ----> SELECCIONE EL NUMERO CASILLA DONDE DESEA JUGAR:'
	juega2_size: equ $-juega2
	

	line1: db '                                         *****                                          *****                ',0xa
	line1_size: equ $-line1
	verti: db '                   **************************************************************************************************',0xa
	verti_size: equ $-verti


	lina1: db '                        ********         *****                                          *****                ',0xa
	lina1_size: equ $-lina1
	lina2: db '                                         *****                  ********                *****                ',0xa
	lina2_size: equ $-lina2
	lina3: db '                                         *****                                          *****      ********  ',0xa
	lina3_size: equ $-lina3
	lina4: db '                                         *****                  ********                *****      ********  ',0xa
	lina4_size: equ $-lina4
	lina5: db '                        ********         *****                  ********                *****                ',0xa
	lina5_size: equ $-lina5
	lina6: db '                        ********         *****                  ********                *****      ********  ',0xa
	lina6_size: equ $-lina6


	liny1: db '                          (((            *****                                          *****                ',0xa
	liny1_size: equ $-liny1
	liny2: db '                                         *****                    (((                   *****                ',0xa
	liny2_size: equ $-liny2
	liny3: db '                                         *****                                          *****         (((    ',0xa
	liny3_size: equ $-liny3
	liny4: db '                                         *****                    (((                   *****         (((    ',0xa
	liny4_size: equ $-liny4
	liny5: db '                          (((            *****                    (((                   *****         (((    ',0xa
	liny5_size: equ $-liny5
	liny6: db '                          (((            *****                    (((                   *****         (((    ',0xa
	liny6_size: equ $-liny6



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
	
	mov dl,0             ;IDENTIFICO AL JUGADOR RESPECTIVO CON RBX
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2
	


primer_cuadro:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;inicio	
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
	

	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2

segundo_cuadro:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;inicio	
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2

tercer_cuadro:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;inicio	
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2
	
cuarta_ite:
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
	imprime lina1,lina1_size  ;inicio
	imprime lina1,lina1_size  ;inicio
	imprime lina1,lina1_size  ;inicio
	imprime lina1,lina1_size  ;inicio
	imprime lina1,lina1_size  ;inicio
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2

quinta_ite:
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
	imprime lina2,lina2_size  ;inicio
	imprime lina2,lina2_size  ;inicio
	imprime lina2,lina2_size  ;inicio
	imprime lina2,lina2_size  ;inicio
	imprime lina2,lina2_size  ;inicio
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2

sexta_ite:
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
	imprime lina3,lina3_size  ;inicio
	imprime lina3,lina3_size  ;inicio
	imprime lina3,lina3_size  ;inicio
	imprime lina3,lina3_size  ;inicio
	imprime lina3,lina3_size  ;inicio
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2

setima_ite:
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
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size ;inicio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2

octava_ite:
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
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size ;inicio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2

novena_ite:	
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
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size ;inicio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_1
	jne pregunta_2
		
;##############################DIBUJO PARA SEGUNDO JUGADOR PRIMER MOVIMIENTO##################################################33

primer_cuadro_2:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime liny1,liny1_size ;inicio
	imprime liny1,liny1_size ;inicio
	imprime liny1,liny1_size ;inicio
	imprime liny1,liny1_size ;inicio
	imprime liny1,liny1_size ;inicio	
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
	

	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1

segundo_cuadro_2:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime liny2,liny2_size ;inicio
	imprime liny2,liny2_size ;inicio
	imprime liny2,liny2_size ;inicio
	imprime liny2,liny2_size ;inicio
	imprime liny2,liny2_size ;inicio	
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1

tercer_cuadro_2:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime liny3,liny3_size ;inicio
	imprime liny3,liny3_size ;inicio
	imprime liny3,liny3_size ;inicio
	imprime liny3,liny3_size ;inicio
	imprime liny3,liny3_size ;inicio	
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1
	
cuarta_ite_2:
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
	imprime liny1,liny1_size  ;inicio
	imprime liny1,liny1_size  ;inicio
	imprime liny1,liny1_size  ;inicio
	imprime liny1,liny1_size  ;inicio
	imprime liny1,liny1_size  ;inicio
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1

quinta_ite_2:
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
	imprime liny2,liny2_size  ;inicio
	imprime liny2,liny2_size  ;inicio
	imprime liny2,liny2_size  ;inicio
	imprime liny2,liny2_size  ;inicio
	imprime liny2,liny2_size  ;inicio
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1

sexta_ite_2:
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
	imprime liny3,liny3_size  ;inicio
	imprime liny3,liny3_size  ;inicio
	imprime liny3,liny3_size  ;inicio
	imprime liny3,liny3_size  ;inicio
	imprime liny3,liny3_size  ;inicio
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
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1

setima_ite_2:
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
	imprime liny1,liny1_size ;inicio
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size ;inicio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1

octava_ite_2:
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
	imprime liny2,liny2_size ;inicio
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size ;inicio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1

novena_ite_2:	
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
	imprime liny3,liny3_size ;inicio
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size ;inicio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	not dl	
	mov al,0
	cmp dl,al
	je pregunta_2
	jne pregunta_1
		

pregunta_1:   
	            	;PREGUNTA PARA PRIMER JUGADOR
	imprime juega1,juega1_size
	leer ingreso,1
	mov r8b,'1' 		
	mov r9b,'2'
	mov r10b,'3'
	mov r11b,'4'
	mov r12b,'5'
	mov r13b,'6'
	mov r14b,'7'
	mov r15b,'8'
	mov al, '9'
	mov bl, [rsi]
	
	cmp bl,r8b
	je primer_cuadro
	cmp bl,r9b
	je segundo_cuadro
	cmp bl,r10b
	je tercer_cuadro
	cmp bl,r11b
	je cuarta_ite
	cmp bl,r12b
	je quinta_ite
	cmp bl,r13b
	je sexta_ite
	cmp bl,r14b
	je setima_ite
	cmp bl,r15b
	je octava_ite
	cmp bl,al
	je novena_ite

pregunta_2:   
	            	;PREGUNTA PARA SEGUNDO JUGADOR
	imprime juega2,juega2_size
	leer ingreso,1
	mov r8b,'1' 		
	mov r9b,'2'
	mov r10b,'3'
	mov r11b,'4'
	mov r12b,'5'
	mov r13b,'6'
	mov r14b,'7'
	mov r15b,'8'
	mov al, '9'
	mov bl, [rsi]
	
	cmp bl,r8b
	je primer_cuadro_2
	cmp bl,r9b
	je segundo_cuadro_2
	cmp bl,r10b
	je tercer_cuadro_2
	cmp bl,r11b
	je cuarta_ite_2
	cmp bl,r12b
	je quinta_ite_2
	cmp bl,r13b
	je sexta_ite_2
	cmp bl,r14b
	je setima_ite_2
	cmp bl,r15b
	je octava_ite_2
	cmp bl,al
	je novena_ite_2

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
