.data # Data declaration section
.text # Assembly language instructions

main: # Start of code section
	li $v0,5
	syscall
	move $a1,$v0
	
	li $v0,5
	syscall
	move $a2,$v0

	add $a3,$a1,$a2
	div $a0,$a3,2

	li $v0,1
	syscall
	
	jr $ra    
