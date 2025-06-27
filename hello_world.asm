
section .bss

section .data

	msg db 'Hello World',0xA ;insgesammt = 12 Bytes(1byte = 1char -> z.B "H")speicher -> 0xA-> \n = 1byte
	len equ $ - msg		;equ = konstante, len = bezeichnun ,$ aktuelle adresse im Speicher -> msg ||Fehlercode bei init msg , init msg2 , init len , init len2 ungültig

section .text
	
	global _start
	_start:

	mov rax,1		;sys write(syscall)
	mov rdi,1		;sys out(richtung)
	mov rsi,msg		;rsi= source =  speicher adr. msg z.b 0xAFF0013746
	mov rdx,len		;rdx = wie viel bytes lesen

	syscall


	mov rax,60
	xor rdi,rdi
	syscall				;exit
