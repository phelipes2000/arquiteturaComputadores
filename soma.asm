.text 
	li $s0, 5 
	li $s1, 10 
	
	add $s2, $s0, $s1
	
	li $v0, 1
	la $a0, ($s2)
	
	syscall
	
	li $v0, 10
	
	syscall
	