# PROGRAM
	.data #data declaration section
	#out_string: .asciiz "\nhola!\n"
	.buffer : .space 20
	.text #assembly language instructions

main: #start of code section
	$li $a1, 10 #numero maximo de chars a leer
	li $v0, 8 #para leer un string
	la $a0, buffer 

	li $v0, 4 #mostrar un string
	syscall
	jr $ra
