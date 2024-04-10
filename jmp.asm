section	.text
	global _start       ;must be declared for using gcc
_start:                     ;tell linker entry point
   mov ecx, 101 ; set ecx to 99
   mov ebx, 32 ; 
   mov eax, 1
   cmp ecx, 100
   jl skip   ;jump if previous comparison less than 
   mov ebx, 13
skip:
   int 0x80
   
   ; je   A, B
   ; jne  A, B
   ; jg  A, B
   ; jge  A, B
   ; jl  A, B
   ; jl. A, B