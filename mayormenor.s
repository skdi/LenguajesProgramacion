
.data 
mayor_str: .asciiz "\nMayor\n"
menor_str: .asciiz "\nMenor\n"
	.text 
main: # Start of code section
	li $v0,5
	syscall
	move $a1,$v0
	bge $a1,10,dir
	li $v0,4
	la $a0,menor_str
	syscall
	jr $ra

dir:li $v0,4
	la $a0,mayor_str
	syscall
	jr $ra
