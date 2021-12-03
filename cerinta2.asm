.data 
str: .space 100
chDelim: .asciz  " "
formatPrintf: .asciz "numerele: %d\n"
formatPrintfrez: .asciz "%d\n"
formatPrintfstr: .asciz "afisez gen sir str: %s\n"
formatScanf: .asciz "%[0 1 2 3 4 5 6 7 8 9 add sub div mul]"
a: .asciz "a"
res: .space 4
firstNumber: .space 4
litera: .byte 0
x: .long 0
y: .long 0
rezultat: .long 0
atoiRes: .long 4
.text

.global main

main:

pushl $str				
pushl $formatScanf
call scanf
popl %ebx
popl %ebx



pushl $chDelim
pushl $str
call strtok 
popl %ebx
popl %ebx

movl %eax, res

pushl res
call atoi
popl %ebx

movl %eax, firstNumber
pushl firstNumber



et_loop:
pushl $chDelim
pushl $0
call strtok 
popl %ebx
popl %ebx

movl %eax, res
cmp $0, %eax
je final

pushl res
call atoi
popl %ebx

movl %eax, atoiRes

cmp $0, atoiRes
je operatie
jne numar

operatie:
movl res, %edi
xorl %ecx,%ecx
movb (%edi, %ecx, 1), %al
cmp $97, %al
je adunare
cmp $115, %al
je scadere
cmp $109, %al
je inmultire
cmp $100, %al
je impartire

adunare:
pop %ebx
pop %eax
addl %ebx, %eax
pushl %eax
jmp et_loop

scadere:
pop %ebx
pop %eax
subl %ebx, %eax
pushl %eax
jmp et_loop


inmultire:
xorl %eax, %eax
movl $0, %edx
pop %ebx
pop %eax
mull %ebx
pushl %eax
jmp et_loop

impartire:
xorl %eax, %eax
movl $0, %edx
pop %ebx
pop %eax
div %ebx
pushl %eax
jmp et_loop


numar:
pushl atoiRes


jmp et_loop


final:
popl %ebx
movl %ebx, rezultat
pushl rezultat				
pushl $formatPrintfrez
call printf
popl %ebx
popl %ebx
jmp exit	




exit:
movl $1, %eax  
xorl %ebx,%ebx    
int $0x80

