.data
out_string: .asciiz "\nhola!\n"
.text

main:
	li $v0,5 #code 5 == read integer
	syscall #invoke the operating system

	li $v1,5 #leer entero
	syscall

	move $a0, $v0 #movemos el contenido de v0 a a0
	move $a1, $v1 

	add v0, a0, a1 #sumamos a0 en a1 y lo movemos a v0

	li $v0,1 #imprimimos v0
	syscall

	jr $ra #fin del programa
