# PROGRAM: Suma
	.data # Data declaration section
out_string: .asciiz "\nhola!\n"

	.text # Assembly language instructions

main:
	li $v0,5 #code 5 == read integer
	syscall #invoke the operating system

	move $t1,$v0 #movemos el contenido de v0 a t1

	li $v0,5 #leer entero
	syscall
	move $t2,$v0 

	Add $t3,$t1,$t2 #sumamos t1 en t2 y lo movemos a t3

	li $v0,1 #imprimimos v0
	move $a0,$t3
	syscall

	jr $ra #fin del programa

