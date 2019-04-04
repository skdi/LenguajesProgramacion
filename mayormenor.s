
.data 
mayor_string: .asciiz "\nMayor que 10\n"
menor_string: .asciiz "\nMenor que 10\n"
	.text 
main: # Start of code section
	li $v0,5
	syscall

	move $a1,$v0

	bge $a1,10,dir
	
	li $v0,4
	la $a0,menor_string
	syscall
	jr $ra

dir:li $v0,4
	la $a0,mayor_string
	syscall

	jr $ra
