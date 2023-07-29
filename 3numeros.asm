.data
.macro encerra
	li $v0, 10
	syscall
.end_macro

.macro printf(%str)
	.data
		msg: .asciiz %str
	.text
		li $v0, 4
		la $a0, msg
		syscall
.end_macro

.text 
.globl principal
principal:
	li $t0, 40
	li $t1, 40
	li $t2, 40
	beq $t0, $t1, iguais
	printf("Pelo menos um numero é diferente!")
	encerra
	
iguais:
	beq $t1, $t2, igual
	printf("Ao menos um numero é diferente")
	encerra
igual:
	printf("os tres numero são iguais")
	encerra
	
	