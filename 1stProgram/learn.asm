section .bss
store_name resb 30
name_len resd 1

section .data
message db "Hi you, enter something",10 ; 10 is newline
mlen equ $ - message
echo_input db "You entered: "
echolen equ $ - echo_input

global _start

_start:

	mov edx, mlen
	mov ecx, message
	mov ebx, 1
	mov eax, 4
	int 80h

    	mov ebx, 0       	
    	mov eax, 1             
    	int 0x80      

uInput:
	