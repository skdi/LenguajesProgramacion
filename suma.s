.data
out_string: .asciiz "\nhola!\n"
.text

main:
	li $v0,5 #code 5 == read integer
	syscall #invoke the operating system

	move $a0, $v0 #movemos el contenido de v0 a a0

	li $v0,5 #leer entero
	syscall
	move $a1, $v0 

	Add $a3, $a0, $a1 #sumamos a0 en a1 y lo movemos a v0

	li $v0,1 #imprimimos v0
	move $a0 ,$a3
	syscall

	jr $ra #fin del programa
