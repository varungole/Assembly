section	.text
	global _start       ;must be declared for using gcc
_start:                     ;tell linker entry point
	mov	edx, len1    ;message length
	mov	ecx, msg1    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
    mov edx, len2
    mov ecx, msg2
    mov ebx, 1
    mov eax, 4
    int 0x80
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel

section	.data

msg1 db	'Hello, world!',0xa	;our dear string
len1	equ	$ - msg1			;length of our dear string

msg2 db 'Hello, Varun!',0xa
len2 equ $ -msg2