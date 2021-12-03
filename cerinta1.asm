.data 
	sirb16: .space 100
	sirb2: .space 400
	sir: .space 100
	nrintreg: .long 0
        formatScanf: .asciz "%s"
        formatPrintfvar: .asciz "%d\n"
        formatPrintf: .asciz "%s\n"
        indexsir: .long 0 
        index2: .long 0
        indexnr: .long 128
        index: .long 0
        var: .byte 0
        x: .byte 0
        cifra: .byte 0
	
.text

.global main

main:
	pushl $sirb16
	pushl $formatScanf
	call scanf
	popl %ebx
	popl %ebx
	
	movl $sirb16, %edi		
	movl $sirb2, %esi
			
	xorl %ecx, %ecx
	
et_for:
	movb (%edi, %ecx, 1), %al 
	cmp $0, %al 
	je decodarea
	
	// instructiuni
	cmp $48, %al
	je cifra0
	cmp $49, %al
	je cifra1
	cmp $50, %al
	je cifra2
	cmp $51, %al
	je cifra3
	cmp $52, %al
	je cifra4
	cmp $53, %al
	je cifra5
	cmp $54, %al
	je cifra6
	cmp $55, %al
	je cifra7
	cmp $56, %al
	je cifra8
	cmp $57, %al
	je cifra9
	cmp $65, %al
	je cifraA
	cmp $66, %al
	je cifraB
	cmp $67, %al
	je cifraC
	cmp $68, %al
	je cifraD
	cmp $69, %al
	je cifraE
	cmp $70, %al
	je cifraF

cont:
	incl %ecx
	jmp et_for 

cifra0:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index

	
	popl %ecx
	jmp cont
	
cifra1:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	
	
	popl %ecx
	jmp cont

cifra2:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	
	
	popl %ecx
	jmp cont

cifra3:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	
	
	popl %ecx
	jmp cont

cifra4:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	
	
	popl %ecx
	jmp cont

cifra5:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	
	
	popl %ecx
	jmp cont
	
	
cifra6:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
cifra7:
	pushl %ecx
	
	movl index, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont



cifra8:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	
	popl %ecx
	jmp cont

cifra9:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont

cifraA:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont

cifraB:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont



cifraC:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont




cifraD:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont

cifraE:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index
	// movl %ecx, indexSb2
	
	popl %ecx
	jmp cont

cifraF:
	pushl %ecx
	
	movl index, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	addl $4, index

	
	popl %ecx
	jmp cont

decodarea:	
movl index, %ecx
movb $10, (%esi, %ecx, 1)
incl %ecx
addl $1, index	
	

movl $sirb2, %esi
movl $sir, %edi
xorl %ecx, %ecx

			
loop:
movl index2, %ecx
movb (%esi, %ecx, 1), %al
cmp $0, %al
je exit
incl %ecx
addl $1, index2
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
cmp $48, %al
je operant
cmp $49, %al
je operatie

operant:
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
cmp $49, %al
je variabila
cmp $48, %al
je nr_intreg

variabila:
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
movb $128, %bl	
jmp decoding_var
	
decoding_var:
movb $0, var
movl $sir, %edi
movb $128, %bl

citesc_cifre:
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
cmp $0, %al
je exit
cmp $49, %al
je cifra_1
cmp $48, %al
je cifra_0

cifra_0:
shr $1, %bl
cmp $0, %bl
je var_in_sir
jmp citesc_cifre

cifra_1:
addb %bl, var
shr $1, %bl
cmp $0, %bl
je var_in_sir
jmp citesc_cifre

var_in_sir:
pushl %ecx
movl indexsir, %ecx
movb var, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
movl indexsir, %ecx
movb $32, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
popl %ecx
movb $0, var
jmp loop


nr_intreg:
movl index2, %ecx
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
cmp $49, %al
je minus_in_sir
cmp $48, %al
je decoding_nr

minus_in_sir:
pushl %ecx
movl indexsir, %ecx
movb $45, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
incl %ecx
popl %ecx
jmp decoding_nr

decoding_nr:
movl $sir, %edi
movb $128, %bl
movb $0, var
movb $0, cifra

citesc_cifre_nr:
movl index2, %ecx
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
cmp $0, %al
je nr_in_sir
cmp $49, %al
je cifra1_nr
cmp $48, %al
je cifra0_nr

cifra0_nr:
shr $1, %bl
cmp $0, %bl
je nr_in_sir
jmp citesc_cifre_nr

cifra1_nr:
addb %bl, var
shr $1, %bl
cmp $0, %bl
je nr_in_sir
jmp citesc_cifre_nr

nr_in_sir:
xorl %eax, %eax
xorl %edx, %edx
mov var, %eax
cmp $10, %eax
jl sub_10
jge peste_10

sub_10:
mov var, %eax
movb %al, cifra
jmp cifra_in_sir
jmp loop

peste_10:
mov var, %eax
cmp $100, %eax
jl sub_100
jge peste_100

sub_100:
xorl %edx, %edx
xorl %eax, %eax
mov var, %eax
movl $10, %ebx
div %ebx
movb %al, cifra
jmp cifra2_in_sir


peste_100:
xorl %edx, %edx
mov var, %eax
movl $100, %ebx
div %ebx
mov %eax, cifra
jmp cifra3_in_sir


cifra3_in_sir:
pushl %ecx
movl indexsir, %ecx
movb cifra, %al
addb $48, %al
movb %al, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
popl %ecx
movb %dl, %al
xorl %edx, %edx
movl $10, %ebx
div %ebx
movb %al, cifra
jmp cifra2_in_sir


cifra2_in_sir:
pushl %ecx
movl indexsir, %ecx
movb cifra, %al
addb $48, %al
movb %al, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
popl %ecx
movb %dl, cifra
jmp cifra_in_sir


cifra_in_sir:
pushl %ecx
movl indexsir, %ecx
movb cifra, %al
addb $48, %al
movb %al, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movl indexsir, %ecx
movb $32, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
movb $0, var
popl %ecx

jmp loop


operatie:
movl index2, %ecx
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2

decoding_op:
movl $sir, %edi
movb $128, %bl

citesc_cifre_op:
movl index2, %ecx
movb (%esi, %ecx, 1), %al
incl %ecx
addl $1, index2
cmp $0, %al
je exit
cmp $49, %al
je cifra1_op
cmp $48, %al
je cifra0_op

cifra0_op:
shr $1, %bl
cmp $0, %bl
je op
jmp citesc_cifre_op

cifra1_op:
addb %bl, var
shr $1, %bl
cmp $0, %bl
je op
jmp citesc_cifre_op

op:
movl indexsir, %ecx
movb var, %al
cmp $0, %al
je let
cmp $1, %al
je add
cmp $2, %al
je sub
cmp $3, %al
je mul
cmp $4, %al
je div


div:
pushl %ecx
movl indexsir, %ecx
movb $100, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $105, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $118, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movl indexsir, %ecx
movb $32, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
popl %ecx
movb $0, var
jmp loop


sub:
pushl %ecx
movl indexsir, %ecx
movb $115, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $117, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $98, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movl indexsir, %ecx
movb $32, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
popl %ecx
movb $0, var
jmp loop


mul:
pushl %ecx
movl indexsir, %ecx
movb $109, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $117, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $108, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movl indexsir, %ecx
movb $32, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
popl %ecx
movb $0, var
jmp loop

add:
pushl %ecx
movl indexsir, %ecx
movb $97, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $100, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $100, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movl indexsir, %ecx
movb $32, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
popl %ecx
movb $0, var
jmp loop

let:
pushl %ecx
movl indexsir, %ecx
movb $108, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $101, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movb $116, (%edi, %ecx, 1)
incl %ecx
addl $1, indexsir
movl indexsir, %ecx
movb $32, %al
movb %al, (%edi, %ecx, 1)
addl $1, indexsir
popl %ecx
movb $0, var
jmp loop	

	
	
	

exit:
movl indexsir, %ecx
movb $10, (%esi, %ecx, 1)
incl %ecx
addl $1, indexsir
movl indexsir, %ecx
movb $13, (%esi, %ecx, 1)
incl %ecx
addl $1, indexsir

	pushl $sir
	pushl $formatPrintf
	call printf
	popl %ebx
	popl %ebx
	
et_exit:	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80

