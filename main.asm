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
	gana1: db '             JUGADOR 1 RESULTO GANADOR                   ',0xa
	gana1_size: equ $-gana1
	gana2: db '             JUGADOR 2 RESULTO GANADOR                   ',0xa
	gana2_size: equ $-gana2
	
	

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
	liny5: db '                          (((            *****                    (((                   *****                ',0xa
	liny5_size: equ $-liny5
	liny6: db '                          (((            *****                    (((                   *****         (((    ',0xa
	liny6_size: equ $-liny6


	linx1: db '                        ********         *****                    (((                   *****                ',0xa
	linx1_size: equ $-linx1
	linx2: db '                        ********         *****                                          *****         (((    ',0xa
	linx2_size: equ $-linx2
	linx3: db '                          (((            *****                  ********                *****                ',0xa
	linx3_size: equ $-linx3
	linx4: db '                                         *****                  ********                *****         (((    ',0xa
	linx4_size: equ $-linx4
	linx5: db '                                         *****                     (((                  *****      ********  ',0xa
	linx5_size: equ $-linx5
	linx6: db '                          (((            *****                                          *****      ********  ',0xa
	linx6_size: equ $-linx6

	;Datos necesarios para los macros
  	termios:        times 36 db 0		;Estructura de 36bytes que contiene el modo de operacion de la consola
  	stdin:          equ 0			;Standard Input (se usa stdin en lugar de escribir manualmente los valores)
  	ICANON:         equ 1<<1		;ICANON: Valor de control para encender/apagar el modo canonico
  	ECHO:           equ 1<<3
	barra: db '           ****************************************************************************************************',0xa
	barra_size: equ $-barra
	hablada: db '*Disclaimer:Este juego solo contiene 10 maneras de completarse, si el usuario ingresa una posición incorrecta pierde su turno y el mismo pasa al otro jugador',0xa
	hablada_size: equ $-hablada

section .text
	global _start
_start:

	canonical_off ICANON,termios          ;Desactiva tener que apretar enter despues de ingresar un dato
	imprime limpiar,tam_limpias	      ;Limpia la pantalla
	imprime barra,barra_size	
	imprime bienvenidos,bienvenidos_size  ;Imprime informacion del menú
	imprime curso,curso_size
	imprime opcion1,opcion1_size
	imprime opcion2,opcion2_size
	imprime opcion3,opcion3_size
	imprime barra,barra_size
	imprime hablada,hablada_size
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
	jmp pregunta
	

;######################### INICIANDO EN CUADRO 1 #################################################333


primer_ite:
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
		

second_player_1:
	
	imprime juega2,juega2_size
	leer ingreso,1                            ;CASO EN EL SELECCIONE LA SEGUNDA
	mov bl, [rsi]
	mov r9b,'2'
	cmp bl,r9b
	jne etiqueta0
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio	
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

	etiqueta0:
	
	mov r10b,'3'    	  ;CASO EN EL QUE SELECCIONE LA TERCERA
	cmp bl,r10b
	jne etiqueta1
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx2,linx2_size ;inicio
	imprime linx2,linx2_size ;inicio
	imprime linx2,linx2_size ;inicio
	imprime linx2,linx2_size ;inicio
	imprime linx2,linx2_size ;inicio	
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
	
	etiqueta1:                             ;CASO EN EL QUE SE SELECCIONE LA CUARTA POSICIÓN 
	mov r11b,'4'
	cmp bl,r11b
	jne etiqueta2
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
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
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
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
	
	etiqueta2:                 ;CASO EN EL QUE SE SELECCIONE LA QUINTA POSICIÓN
	mov r12b,'5'
	cmp bl,r12b
	jne etiqueta3
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
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
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
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
	
	etiqueta3:
	mov r13b,'6'
	cmp bl,r13b
	jne etiqueta4
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
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
	imprime liny3,liny1_size 
	imprime liny3,liny1_size 
	imprime liny3,liny1_size 
	imprime liny3,liny1_size 
	imprime liny3,liny1_size 
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
	
	etiqueta4:
	mov r14b,'7'
	cmp bl,r14b
	jne etiqueta5
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
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
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime line1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta5:
	mov r15b,'8'
	cmp bl,r15b
	jne etiqueta6
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
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
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta6:
	mov r10b,'9'
	cmp bl,r10b
	jne etiqueta7
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
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
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,liny1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta7:
	
	jmp jugada_1_2

;##############################        INICIANDO EN SEGUNDO CUADRO    ##################################################

segunda_ite:
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
	

second_player_2:
	imprime juega2,juega2_size
	leer ingreso,1                            ;CASO EN EL SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r8b,'1'
	cmp bl,r8b
	jne etiqueta8
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx3,linx3_size ;inicio
	imprime linx3,linx3_size ;inicio
	imprime linx3,linx3_size ;inicio
	imprime linx3,linx3_size ;inicio
	imprime linx3,linx3_size ;inicio	
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

	etiqueta8:                           ;CASO EN EL SELECCIONE LA TERCERA
	mov r10b,'3'
	cmp bl,r10b
	jne etiqueta9
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx4,linx4_size ;inicio
	imprime linx4,linx4_size ;inicio
	imprime linx4,linx4_size ;inicio
	imprime linx4,linx4_size ;inicio
	imprime linx4,linx4_size ;inicio	
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
	
	etiqueta9:                        ;CASO EN EL SELECCIONE LA CUARTA
	mov r11b,'4'
	cmp bl,r11b
	jne etiqueta10
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size ; 
	imprime liny1,liny1_size ;
	imprime liny1,liny1_size ;
	imprime liny1,liny1_size ;
	imprime liny1,liny1_size ;
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

	etiqueta10:                      ;CASO EN EL SELECCIONE LA QUINTA
	mov r12b,'5'
	cmp bl,r12b
	jne etiqueta11
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size ; 
	imprime liny2,liny2_size ;
	imprime liny2,liny2_size ;
	imprime liny2,liny2_size ;
	imprime liny2,liny2_size ;
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

	etiqueta11:                          ;CASO EN EL SELECCIONE LA SEXTA
	mov r13b,'6'
	cmp bl,r13b
	jne etiqueta12
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size ; 
	imprime liny3,liny3_size ;
	imprime liny3,liny3_size ;
	imprime liny3,liny3_size ;
	imprime liny3,liny3_size ;
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

	etiqueta12:                          ;CASO EN EL SELECCIONE LA SETIMA
	mov r14b,'7'
	cmp bl,r14b
	jne etiqueta13
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size	
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
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size	
	
	etiqueta13:                        ;CASO EN EL SELECCIONE LA OCTAVA
	mov r15b,'8'
	cmp bl,r15b
	jne etiqueta14
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size	
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
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size	
	
	
	etiqueta14:                          ;CASO EN EL SELECCIONE LA NOVENA
	mov r9b,'9'
	cmp bl,r9b
	jne etiqueta15
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
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
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta15:
	mov r10b,'2'
	cmp bl,r10b
	je second_player_2
	jmp pregunta

;############################## INICIANDO EN TERCER CUADRO ##################################################

tercer_ite:
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina2_size ;inicio
	imprime lina3,lina2_size ;inicio
	imprime lina3,lina2_size ;inicio
	imprime lina3,lina2_size ;inicio
	imprime lina3,lina2_size ;inicio	
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
	
second_player_3:
	imprime juega2,juega2_size
	leer ingreso,1                            ;CASO EN EL SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r8b,'1'
	cmp bl,r8b
	jne etiqueta16
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx6,linx6_size ;inicio
	imprime linx6,linx6_size ;inicio
	imprime linx6,linx6_size ;inicio
	imprime linx6,linx6_size ;inicio
	imprime linx6,linx6_size ;inicio	
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

	etiqueta16:                           ;CASO EN EL SELECCIONE LA SEGUNDA
	mov bl, [rsi]
	mov r9b,'2'
	cmp bl,r9b
	jne etiqueta17
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx5,linx5_size ;inicio
	imprime linx5,linx5_size ;inicio
	imprime linx5,linx5_size ;inicio
	imprime linx5,linx5_size ;inicio
	imprime linx5,linx5_size ;inicio	
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

	etiqueta17:                       ;CASO EN EL SELECCIONE LA CUARTA
	mov r11b,'4'
	cmp bl,r11b
	jne etiqueta18
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size ; 
	imprime liny1,liny1_size ;
	imprime liny1,liny1_size ;
	imprime liny1,liny1_size ;
	imprime liny1,liny1_size ;
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

	etiqueta18:                      ;CASO EN EL SELECCIONE LA QUINTA
	mov r12b,'5'
	cmp bl,r12b
	jne etiqueta19
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size ; 
	imprime liny2,liny2_size ;
	imprime liny2,liny2_size ;
	imprime liny2,liny2_size ;
	imprime liny2,liny2_size ;
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

	etiqueta19:                          ;CASO EN EL SELECCIONE LA SEXTA
	mov r13b,'6'
	cmp bl,r13b
	jne etiqueta20
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size ; 
	imprime liny3,liny3_size ;
	imprime liny3,liny3_size ;
	imprime liny3,liny3_size ;
	imprime liny3,liny3_size ;
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

	etiqueta20:                          ;CASO EN EL SELECCIONE LA SETIMA
	mov r14b,'7'
	cmp bl,r14b
	jne etiqueta21
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size	
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
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size	
	
	etiqueta21:                        ;CASO EN EL SELECCIONE LA OCTAVA
	mov r15b,'8'
	cmp bl,r15b
	jne etiqueta22
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size	
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
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size	
	
	
	etiqueta22:                          ;CASO EN EL SELECCIONE LA NOVENA
	mov r9b,'9'
	cmp bl,r9b
	jne etiqueta23
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
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
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta23:
	mov r10b,'3'
	cmp bl,r10b
	je second_player_3
	jmp pregunta

	jmp pregunta

;############################## INICIANDO EN CUARTO CUADRO ##################################################

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
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size
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


second_player_4:
	
	imprime juega2,juega2_size
	leer ingreso,1                            ;CASO EN EL SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r9b,'1'
	cmp bl,r9b
	jne etiqueta24
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
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
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

	etiqueta24:
	
	mov r10b,'2'    	  ;CASO EN EL QUE SELECCIONE LA SEGUNDA
	cmp bl,r10b
	jne etiqueta25
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
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
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
	
	etiqueta25:                             ;CASO EN EL QUE SE SELECCIONE LA TERCERA POSICIÓN 
	mov r11b,'3'
	cmp bl,r11b
	jne etiqueta26
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
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
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
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
	
	etiqueta26:                 ;CASO EN EL QUE SE SELECCIONE LA QUINTA POSICIÓN
	mov r12b,'5'
	cmp bl,r12b
	jne etiqueta27
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,lina1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime linx1,linx1_size 
	imprime linx1,linx1_size 
	imprime linx1,linx1_size 
	imprime linx1,linx1_size 
	imprime linx1,linx1_size 
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
	
	etiqueta27:          ;SEXTA POSICIÓN
	mov r13b,'6'
	cmp bl,r13b
	jne etiqueta28
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime linx2,linx2_size 
	imprime linx2,linx2_size 
	imprime linx2,linx2_size 
	imprime linx2,linx2_size 
	imprime linx2,linx2_size 
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
	
	etiqueta28:  ;SETIMA
	mov r14b,'7'
	cmp bl,r14b
	jne etiqueta29
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime line1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta29:  ;OCTAVA
	mov r14b,'8'
	cmp bl,r14b
	jne etiqueta30
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta30:          ;NOVENA
	mov r14b,'9'
	cmp bl,r14b
	jne etiqueta31
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta31:
	mov r10b,'4'
	cmp bl,r10b
	je second_player_4
	jmp pregunta


;############################## INICIANDO EN QUINTO CUADRO ##################################################

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
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size
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

second_player_5:
	imprime juega2,juega2_size
	leer ingreso,1                            ; SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r9b,'1'
	cmp bl,r9b
	jne etiqueta32
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
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
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

	etiqueta32:                                       ;SI SE SELECCIONA LA SEGUNDA
	mov bl, [rsi]
	mov r9b,'2'
	cmp bl,r9b
	jne etiqueta33
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
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
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

	etiqueta33:              ;SI SE ESCOGE EL TERCERO
	mov bl, [rsi]
	mov r9b,'3'
	cmp bl,r9b
	jne etiqueta34
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
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
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

	etiqueta34:	                       ;SI SE ESCOGE EL CUARTO
	mov bl, [rsi]
	mov r9b,'4'
	cmp bl,r9b
	jne etiqueta35
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime linx3,linx3_size 
	imprime linx3,linx3_size 
	imprime linx3,linx3_size 
	imprime linx3,linx3_size 
	imprime linx3,linx3_size 
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

	etiqueta35:	                       ;SI SE ESCOGE EL SEXTO
	mov bl, [rsi]
	mov r9b,'6'
	cmp bl,r9b
	jne etiqueta36
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime linx4,linx4_size 
	imprime linx4,linx4_size 
	imprime linx4,linx4_size 
	imprime linx4,linx4_size 
	imprime linx4,linx4_size 
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

	etiqueta36:                            ;SELECCIONA SETIMO
	mov bl, [rsi]
	mov r9b,'7'
	cmp bl,r9b
	jne etiqueta37
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta37:                       ;SELECCIONA 8
	mov bl, [rsi]
	mov r9b,'8'
	cmp bl,r9b
	jne etiqueta38
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta38:
	mov bl, [rsi]
	mov r9b,'9'
	cmp bl,r9b
	jne etiqueta39
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime lina2,lina2_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta39:
	mov r10b,'5'
	cmp bl,r10b
	je second_player_5
	jmp pregunta

;############################## INICIANDO EN SEXTO CUADRO ##################################################

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
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size
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

second_player_6:
	imprime juega2,juega2_size
	leer ingreso,1                            ; SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r9b,'1'
	cmp bl,r9b
	jne etiqueta40
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
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
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

	etiqueta40:                                       ;SI SE SELECCIONA LA SEGUNDA
	mov bl, [rsi]
	mov r9b,'2'
	cmp bl,r9b
	jne etiqueta41
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
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
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

	etiqueta41:              ;SI SE ESCOGE EL TERCERO
	mov bl, [rsi]
	mov r9b,'3'
	cmp bl,r9b
	jne etiqueta42
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
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
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

	etiqueta42:	                       ;SI SE ESCOGE EL CUARTO
	mov bl, [rsi]
	mov r9b,'4'
	cmp bl,r9b
	jne etiqueta43
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime linx6,linx6_size 
	imprime linx6,linx6_size 
	imprime linx6,linx6_size 
	imprime linx6,linx6_size 
	imprime linx6,linx6_size 
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

	etiqueta43:	                       ;SI SE ESCOGE EL SEXTO
	mov bl, [rsi]
	mov r9b,'5'
	cmp bl,r9b
	jne etiqueta44
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime linx5,linx5_size 
	imprime linx5,linx5_size 
	imprime linx5,linx5_size 
	imprime linx5,linx5_size 
	imprime linx5,linx5_size 
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

	etiqueta44:                            ;SELECCIONA SETIMO
	mov bl, [rsi]
	mov r9b,'7'
	cmp bl,r9b
	jne etiqueta45
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta45:                       ;SELECCIONA 8
	mov bl, [rsi]
	mov r9b,'8'
	cmp bl,r9b
	jne etiqueta46
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina3,lina2_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime liny2,liny2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta46:
	mov bl, [rsi]
	mov r9b,'9'
	cmp bl,r9b
	jne etiqueta47
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina3,lina2_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime lina3,lina3_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime liny3,liny3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta47:
	mov r10b,'6'
	cmp bl,r10b
	je second_player_6
	jmp pregunta

;############################## INICIANDO EN SETIMO CUADRO ##################################################

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
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;incio
	imprime lina1,lina1_size ;inicio
	imprime lina1,lina1_size ;incio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size	


second_player_7:
	imprime juega2,juega2_size
	leer ingreso,1                            ; SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r9b,'1'
	cmp bl,r9b
	jne etiqueta48
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
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta48:                                       ;SI SE SELECCIONA LA SEGUNDA
	mov bl, [rsi]
	mov r9b,'2'
	cmp bl,r9b
	jne etiqueta49
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
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta49:              ;SI SE ESCOGE EL TERCERO
	mov bl, [rsi]
	mov r9b,'3'
	cmp bl,r9b
	jne etiqueta50
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
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta50:	                       ;SI SE ESCOGE EL CUARTO
	mov bl, [rsi]
	mov r9b,'4'
	cmp bl,r9b
	jne etiqueta51
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta51:	                       ;SI SE ESCOGE EL QUINTO
	mov bl, [rsi]
	mov r9b,'5'
	cmp bl,r9b
	jne etiqueta52
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta52:                            ;SELECCIONA SEXTO
	mov bl, [rsi]
	mov r9b,'6'
	cmp bl,r9b
	jne etiqueta53
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime lina1,lina1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta53:                       ;SELECCIONA 8
	mov bl, [rsi]
	mov r9b,'8'
	cmp bl,r9b
	jne etiqueta54
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
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
	imprime linx1,linx1_size
	imprime linx1,linx1_size
	imprime linx1,linx1_size
	imprime linx1,linx1_size
	imprime linx1,linx1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta54:
	mov bl, [rsi]
	mov r9b,'9'
	cmp bl,r9b
	jne etiqueta55
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
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
	imprime linx2,linx2_size
	imprime linx2,linx2_size
	imprime linx2,linx2_size
	imprime linx2,linx2_size
	imprime linx2,linx2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta55:
	mov r10b,'7'
	cmp bl,r10b
	je second_player_7
	jmp pregunta

;############################## INICIANDO EN OCTAVO CUADRO ##################################################

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
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;incio
	imprime lina2,lina2_size ;inicio
	imprime lina2,lina2_size ;incio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size	


second_player_8:
	imprime juega2,juega2_size
	leer ingreso,1                            ; SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r9b,'1'
	cmp bl,r9b
	jne etiqueta56
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
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta56:                                       ;SI SE SELECCIONA LA SEGUNDA
	mov bl, [rsi]
	mov r9b,'2'
	cmp bl,r9b
	jne etiqueta57
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
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta57:              ;SI SE ESCOGE EL TERCERO
	mov bl, [rsi]
	mov r9b,'3'
	cmp bl,r9b
	jne etiqueta58
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
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta58:	                       ;SI SE ESCOGE EL CUARTO
	mov bl, [rsi]
	mov r9b,'4'
	cmp bl,r9b
	jne etiqueta59
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta59:	                       ;SI SE ESCOGE EL QUINTO
	mov bl, [rsi]
	mov r9b,'5'
	cmp bl,r9b
	jne etiqueta60
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta60:                            ;SELECCIONA SEXTO
	mov bl, [rsi]
	mov r9b,'6'
	cmp bl,r9b
	jne etiqueta61
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime lina2,lina2_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta61:                       ;SELECCIONA SETIMO
	mov bl, [rsi]
	mov r9b,'7'
	cmp bl,r9b
	jne etiqueta62
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
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
	imprime linx3,linx3_size
	imprime linx3,linx3_size
	imprime linx3,linx3_size
	imprime linx3,linx3_size
	imprime linx3,linx3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta62:          ;SELECCIONA NOVENO
	mov bl, [rsi]
	mov r9b,'9'
	cmp bl,r9b
	jne etiqueta63
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
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
	imprime linx4,linx4_size
	imprime linx4,linx4_size
	imprime linx4,linx4_size
	imprime linx4,linx4_size
	imprime linx4,linx4_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta63:
	mov r10b,'8'
	cmp bl,r10b
	je second_player_8
	jmp pregunta

;############################## INICIANDO EN NOVENO CUADRO ##################################################

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
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;incio
	imprime lina3,lina3_size ;inicio
	imprime lina3,lina3_size ;incio
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size	

second_player_9:
	
	imprime juega2,juega2_size
	leer ingreso,1                            ; SELECCIONE LA PRIMERA
	mov bl, [rsi]
	mov r9b,'1'
	cmp bl,r9b
	jne etiqueta64
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
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta64:                                       ;SI SE SELECCIONA LA SEGUNDA
	mov bl, [rsi]
	mov r9b,'2'
	cmp bl,r9b
	jne etiqueta65
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
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta65:              ;SI SE ESCOGE EL TERCERO
	mov bl, [rsi]
	mov r9b,'3'
	cmp bl,r9b
	jne etiqueta66
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
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta66:	                       ;SI SE ESCOGE EL CUARTO
	mov bl, [rsi]
	mov r9b,'4'
	cmp bl,r9b
	jne etiqueta67
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime liny1,liny1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta67:	                       ;SI SE ESCOGE EL QUINTO
	mov bl, [rsi]
	mov r9b,'5'
	cmp bl,r9b
	jne etiqueta68
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime liny2,liny2_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	etiqueta68:                            ;SELECCIONA SEXTO
	mov bl, [rsi]
	mov r9b,'6'
	cmp bl,r9b
	jne etiqueta69
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime liny3,liny3_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime lina3,lina3_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta69:                       ;SELECCIONA 7
	mov bl, [rsi]
	mov r9b,'7'
	cmp bl,r9b
	jne etiqueta70
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
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
	imprime linx6,linx6_size
	imprime linx6,linx6_size
	imprime linx6,linx6_size
	imprime linx6,linx6_size
	imprime linx6,linx6_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta70:
	mov bl, [rsi]
	mov r9b,'8'
	cmp bl,r9b
	jne etiqueta71
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio
	imprime line1,line1_size ;inicio	
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
	imprime linx5,linx5_size
	imprime linx5,linx5_size
	imprime linx5,linx5_size
	imprime linx5,linx5_size
	imprime linx5,linx5_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	
	etiqueta71:
	mov r10b,'9'
	cmp bl,r10b
	je second_player_9
	jmp pregunta

;##############################   LOGICA PARA PRIMER MOVIMIENTO    #################################################

pregunta:   
	            	             
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

	                                   ; Se realiza ubicación de posición inicial de juego
	cmp bl,r8b
	je primer_ite
	cmp bl,r9b
	je segunda_ite
	cmp bl,r10b
	je tercer_ite
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

;########################### LÓGICA PARA 10 JUEGOS ÚNICOS ##############################################

jugada_1_2:
	imprime juega1,juega1_size
	leer ingreso,1                     ;Esta jugada continua si el jugador 1 selecciona 4
	mov bl, [rsi]
	mov r9b,'4'
	cmp bl,r9b
	jne etiqueta1_2
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
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
	imprime juega2,juega2_size
	leer ingreso,1
	
	
	mov bl, [rsi]
	mov r9b,'7'
	cmp bl,r9b
	jne etiqueta1_2_4
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime lina1,lina1_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	imprime juega1,juega1_size
	leer ingreso,1

	mov bl, [rsi]
	mov r9b,'5'
	cmp bl,r9b
	jne etiqueta1_2_4_7
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime liny1,liny1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	imprime juega2,juega2_size
	leer ingreso,1	

	mov bl, [rsi]
	mov r9b,'8'
	cmp bl,r9b
	jne etiqueta1_2_4_7_5
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime lina5,lina5_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size
	imprime juega1,juega1_size
	leer ingreso,1		

	mov bl, [rsi]
	mov r9b,'6'
	cmp bl,r9b
	jne etiqueta1_2_4_7_5_8
	imprime limpiar,tam_limpias
	imprime encabe1,encabe1_size
	imprime encabe2,encabe2_size
	imprime line1,line1_size
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio
	imprime linx1,linx1_size ;inicio	
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime lina6,lina6_size 
	imprime lina6,lina6_size 
	imprime lina6,lina6_size 
	imprime lina6,lina6_size 
	imprime lina6,lina6_size 
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size	
	imprime verti,verti_size
	imprime verti,verti_size
	imprime line1,line1_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime liny5,liny5_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime line1,line1_size
	imprime begin1,begin1_size

	jmp creditos
	
	etiqueta1_2:
	etiqueta1_2_4:
	etiqueta1_2_4_7:
	etiqueta1_2_4_7_5:
	etiqueta1_2_4_7_5_8:
	jmp _start
	

;########################### LÓGICA PARA OPCIONES 2 Y 3 DEL MENU #########################################

	

creditos:
	imprime limpiar,tam_limpias
	imprime barra,barra_size
	imprime barra,barra_size
	imprime gana1,gana1_size
	imprime barra,barra_size
	imprime barra,barra_size




	imprime cred,cred_size
	imprime cred1,cred1_size
	imprime cred2,cred2_size
	imprime cred3,cred3_size
	imprime barra,barra_size
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
