.data 
str: .space 400
matrice: .space 1600
index: .long 0
linii: .space 4
coloane: .space 4
total_elem: .space 4
var: .long 0
terminal: .byte 0
res: .space 4
number: .space 4
firstNumber: .space 4
litera: .byte 0
ii: .long 0
jj: .long 0
numar_op:.long 0
nr_de_afisat: .long 0
chDelim: .asciz  " "
spatiu: .byte 32
formatPrintf: .asciz "%d "
formatPrintfspatiu: .asciz "%s"
formatScanf: .asciz "%[0 1 2 3 4 5 6 7 8 9 add sub div mul let abcdefghijklmnopqrstuvwxyz-]"


newline: .asciz "\n"


atoiRes: .long 0


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

movl %eax, atoiRes



citire_dimensiuni:
pushl $chDelim
pushl $0
call strtok 
popl %ebx
popl %ebx

movl %eax, res
cmp $0, %eax
je exit

pushl res
call atoi
popl %ebx

movl %eax, linii

pushl $chDelim
pushl $0
call strtok 
popl %ebx
popl %ebx

movl %eax, res
cmp $0, %eax
je exit

pushl res
call atoi
popl %ebx

movl %eax, coloane

movl $matrice, %edi

movl linii, %eax
mull coloane
movl %eax, total_elem



jmp citire_matrice

citire_matrice:

pushl $chDelim
pushl $0
call strtok 
popl %ebx
popl %ebx

movl %eax, res
cmp $0, res
je exit

pushl res
call atoi
popl %ebx

movl %eax, atoiRes



movl $matrice, %edi
movl index, %ecx
movl atoiRes, %eax
movl %eax, (%edi, %ecx, 4)
addl $1, index





movl index,%ecx
cmp total_elem, %ecx
je operatie_numar

jmp citire_matrice


operatie_numar:
pushl $chDelim
pushl $0
call strtok 
popl %ebx
popl %ebx

movl %eax, res
cmp $0, %eax
je exit


pushl $chDelim
pushl $0
call strtok 
popl %ebx
popl %ebx

movl %eax, res
cmp $0, %eax
je exit


movl res, %esi
xorl %ecx, %ecx
mov (%esi, %ecx, 1),%bl
cmp $114, %bl
je operatie_rotatie
jne numar 

numar:
pushl res
call atoi
popl %ebx

movl %eax, numar_op
jmp add_sub_mul_div

add_sub_mul_div:
pushl $chDelim
pushl $0
call strtok 
popl %ebx
popl %ebx

movl %eax, res
cmp $0, %eax
je exit

movl res, %esi
xorl %ecx, %ecx
mov (%esi, %ecx, 1),%al
cmp $97, %al
je add
cmp $115, %al
je sub
cmp $109, %al
je mul
cmp $100, %al
je div


add:

pushl linii
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


pushl coloane			
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


movl $matrice, %edi
movl $0, ii
movl $0, jj


loop1_add:
movl $0, jj
movl linii, %eax
cmp ii, %eax
je exit
jne loop2_add

loop2_add:
movl coloane, %ebx
cmp jj, %ebx
je et_loop1_add

movl ii, %eax
mull coloane
addl jj, %eax
movl (%edi, %eax, 4), %ebx
addl numar_op, %ebx
movl %ebx, nr_de_afisat


pushl nr_de_afisat
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


addl $1, jj
jmp loop2_add

et_loop1_add:
addl $1, ii
jmp loop1_add





sub:

pushl linii
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


pushl coloane			
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


movl $matrice, %edi
movl $0, ii
movl $0, jj


loop1_sub:
movl $0, jj
movl linii, %eax
cmp ii, %eax
je exit
jne loop2_sub

loop2_sub:
movl coloane, %ebx
cmp jj, %ebx
je et_loop1_sub

movl ii, %eax
mull coloane
addl jj, %eax
movl (%edi, %eax, 4), %ebx
subl numar_op, %ebx
movl %ebx, nr_de_afisat


pushl nr_de_afisat
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


addl $1, jj
jmp loop2_sub

et_loop1_sub:
addl $1, ii
jmp loop1_sub




mul:

pushl linii
pushl $formatPrintf
call printf
popl %ebx
popl %ebx

pushl coloane			
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


movl $matrice, %edi
movl $0, ii
movl $0, jj


loop1_mul:
movl $0, jj
movl linii, %eax
cmp ii, %eax
je exit
jne loop2_mul

loop2_mul:
movl coloane, %ebx
cmp jj, %ebx
je et_loop1_mul

movl ii, %eax
mull coloane
addl jj, %eax
movl (%edi, %eax, 4), %ebx
movl $0, %edx
movl %ebx, %eax
imull numar_op
movl %eax, nr_de_afisat


pushl nr_de_afisat
pushl $formatPrintf
call printf
popl %ebx
popl %ebx



addl $1, jj
jmp loop2_mul

et_loop1_mul:
addl $1, ii
jmp loop1_mul




div:

pushl linii
pushl $formatPrintf
call printf
popl %ebx
popl %ebx



pushl coloane			
pushl $formatPrintf
call printf
popl %ebx
popl %ebx



movl $matrice, %edi
movl $0, ii
movl $0, jj


loop1_div:
movl $0, jj
movl linii, %eax
cmp ii, %eax
je exit
jne loop2_div

loop2_div:
movl coloane, %ebx
cmp jj, %ebx
je et_loop1_div

movl ii, %eax
mull coloane
addl jj, %eax
movl (%edi, %eax, 4), %eax
movl $0, %edx
cmp $0, %eax
jge pozitive
jl negative

pozitive:
pushl %eax
movl numar_op, %ebx
cmp $0, %ebx
jl pozy
divl numar_op
movl %eax, nr_de_afisat
popl %eax
jmp et_dupa

negative:
movl numar_op, %ebx
cmp $0, %ebx
jl negy
idivl numar_op
movl %eax, nr_de_afisat
 
jmp et_dupa

negy: 
movl $0, %ebx
subl %eax, %ebx 
movl %ebx, %eax
movl $0, %ebx
subl numar_op, %ecx
divl %ecx
movl %eax, nr_de_afisat
jmp et_dupa

pozy:
idivl numar_op
movl %eax, nr_de_afisat

jmp et_dupa



et_dupa:
pushl nr_de_afisat
pushl $formatPrintf
call printf
popl %ebx
popl %ebx




addl $1, jj
jmp loop2_div

et_loop1_div:
addl $1, ii
jmp loop1_div


operatie_rotatie:
pushl coloane
pushl $formatPrintf
call printf
popl %ebx
popl %ebx




pushl linii			
pushl $formatPrintf
call printf
popl %ebx
popl %ebx




rotire_matrice:

movl $matrice, %edi
movl linii, %ecx
subl $1, %ecx
movl %ecx, ii
movl $0, jj


loop1:
movl linii, %ecx
subl $1, %ecx
movl %ecx, ii
movl coloane, %eax
cmp jj, %eax
je exit
jne loop2

loop2:

movl $0, %ebx
cmp ii, %ebx
jg et_loop1

movl $0, %edx
movl coloane, %eax
mull ii
addl jj, %eax
movl (%edi, %eax, 4), %ebx
movl %ebx, nr_de_afisat


pushl nr_de_afisat
pushl $formatPrintf
call printf
popl %ebx
popl %ebx


subl $1, ii

jmp loop2

et_loop1:
addl $1, jj
jmp loop1



exit:
pushl $newline
pushl $formatPrintfspatiu
call printf
popl %ebx
popl %ebx

pushl $0
call fflush
popl %ebx

movl $1, %eax  
xorl %ebx,%ebx    
int $0x80
