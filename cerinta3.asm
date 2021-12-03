.data 
str: .space 200
chDelim: .asciz  " "
formatPrintfrez: .asciz "%d\n"
formatScanf: .asciz "%[0 1 2 3 4 5 6 7 8 9 add sub div mul let abcdefghijklmnopqrstuvwxyz-]"
var: .long 0
res: .space 4
firstNumber: .space 4
litera: .byte 0
a: .long 0
b: .long 0
c: .long 0
d: .long 0
e: .long 0
f: .long 0
g: .long 0
h: .long 0
i: .long 0
j: .long 0
k: .long 0
l: .long 0
m: .long 0 
n: .long 0
o: .long 0
p: .long 0
q: .long 0
r: .long 0
s: .long 0
t: .long 0
u: .long 0
v: .long 0
w: .long 0 
x: .long 0
y: .long 0
rezultat: .long 0
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

cmp $0, atoiRes
je variabila
jne numar


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
je operatie_variabila
jne numar

operatie_variabila:
pushl res
call strlen
popl %ebx

cmp $1, %eax
je variabila
jne operatie

variabila:
movl res, %edi
xorl %ecx, %ecx
movb (%edi, %ecx, 1), %al
cmp $120, %al
je var_x
cmp $121, %al
je var_y
cmp $97, %al
je var_a
cmp $98, %al
je var_b
cmp $99, %al
je var_c
cmp $100, %al
je var_d
cmp $101, %al
je var_e
cmp $102, %al
je var_f
cmp $103, %al
je var_g
cmp $104, %al
je var_h
cmp $105, %al
je var_i
cmp $106, %al
je var_j
cmp $107, %al
je var_k
cmp $108, %al
je var_l
cmp $109, %al
je var_m
cmp $110, %al
je var_n
cmp $111, %al
je var_o
cmp $112, %al
je var_p
cmp $113, %al
je var_q
cmp $114, %al
je var_r
cmp $115, %al
je var_s
cmp $116, %al
je var_t
cmp $117, %al
je var_u
cmp $118, %al
je var_v
cmp $119, %al
je var_w

var_x:
movl $x, %ebx
cmp $0, %ebx
jg valx_pe_stiva
jle varx_pe_stiva
jmp et_loop

varx_pe_stiva:
movl $120, %eax
pushl %eax
jmp et_loop

valx_pe_stiva:
pushl x
jmp et_loop

var_y:
movl y, %ebx
cmp $0, %ebx
jg valy_pe_stiva
jle vary_pe_stiva
jmp et_loop

valy_pe_stiva:
pushl y
jmp et_loop

vary_pe_stiva:
movl $121,%eax
pushl %eax
jmp et_loop

var_a:
movl a, %ebx
cmp $0, %ebx
jg vala_pe_stiva
jle vara_pe_stiva
jmp et_loop

vara_pe_stiva:
movl $97, %eax
pushl %eax
jmp et_loop

vala_pe_stiva:
pushl a
jmp et_loop

var_b:
movl b, %ebx
cmp $0, %ebx
jg valb_pe_stiva
jle varb_pe_stiva
jmp et_loop

varb_pe_stiva:
movl $98, %eax
pushl %eax
jmp et_loop

valb_pe_stiva:
pushl b
jmp et_loop

var_c:
movl c, %ebx
cmp $0, %ebx
jg valc_pe_stiva
jle varc_pe_stiva
jmp et_loop

varc_pe_stiva:
movl $99, %eax
pushl %eax
jmp et_loop

valc_pe_stiva:
pushl c
jmp et_loop

var_d:
movl d, %ebx
cmp $0, %ebx
jg vald_pe_stiva
jle vard_pe_stiva
jmp et_loop

vard_pe_stiva:
movl $100, %eax
pushl %eax
jmp et_loop

vald_pe_stiva:
pushl d
jmp et_loop

var_e:
movl e, %ebx
cmp $0, %ebx
jg vale_pe_stiva
jle vare_pe_stiva
jmp et_loop

vare_pe_stiva:
movl $101, %eax
pushl %eax
jmp et_loop

vale_pe_stiva:
pushl e
jmp et_loop

var_f:
movl f, %ebx
cmp $0, %ebx
jg valf_pe_stiva
jle varf_pe_stiva
jmp et_loop

varf_pe_stiva:
movl $102, %eax
pushl %eax
jmp et_loop

valf_pe_stiva:
pushl f
jmp et_loop

var_g:
movl g, %ebx
cmp $0, %ebx
jg valg_pe_stiva
jle varg_pe_stiva
jmp et_loop

varg_pe_stiva:
movl $103, %eax
pushl %eax
jmp et_loop

valg_pe_stiva:
pushl g
jmp et_loop

var_h:
movl h, %ebx
cmp $0, %ebx
jg valh_pe_stiva
jle varh_pe_stiva
jmp et_loop

varh_pe_stiva:
movl $104, %eax
pushl %eax
jmp et_loop

valh_pe_stiva:
pushl h
jmp et_loop

var_i:
movl i, %ebx
cmp $0, %ebx
jg vali_pe_stiva
jle vari_pe_stiva
jmp et_loop

vari_pe_stiva:
movl $105, %eax
pushl %eax
jmp et_loop

vali_pe_stiva:
pushl i
jmp et_loop

var_j:
movl j, %ebx
cmp $0, %ebx
jg valj_pe_stiva
jle varj_pe_stiva
jmp et_loop

varj_pe_stiva:
movl $106, %eax
pushl %eax
jmp et_loop

valj_pe_stiva:
pushl j
jmp et_loop

var_k:
movl k, %ebx
cmp $0, %ebx
jg valk_pe_stiva
jle vark_pe_stiva
jmp et_loop

vark_pe_stiva:
movl $107, %eax
pushl %eax
jmp et_loop

valk_pe_stiva:
pushl k
jmp et_loop

var_l:
movl l, %ebx
cmp $0, %ebx
jg vall_pe_stiva
jle varl_pe_stiva
jmp et_loop

varl_pe_stiva:
movl $108, %eax
pushl %eax
jmp et_loop

vall_pe_stiva:
pushl l
jmp et_loop

var_m:
movl m, %ebx
cmp $0, %ebx
jg valm_pe_stiva
jle varm_pe_stiva
jmp et_loop

varm_pe_stiva:
movl $109, %eax
pushl %eax
jmp et_loop

valm_pe_stiva:
pushl m
jmp et_loop

var_n:
movl n, %ebx
cmp $0, %ebx
jg valn_pe_stiva
jle varn_pe_stiva
jmp et_loop

varn_pe_stiva:
movl $110, %eax
pushl %eax
jmp et_loop

valn_pe_stiva:
pushl n
jmp et_loop

var_o:
movl o, %ebx
cmp $0, %ebx
jg valo_pe_stiva
jle varo_pe_stiva
jmp et_loop

varo_pe_stiva:
movl $111, %eax
pushl %eax
jmp et_loop

valo_pe_stiva:
pushl o
jmp et_loop


var_p:
movl p, %ebx
cmp $0, %ebx
jg valp_pe_stiva
jle varp_pe_stiva
jmp et_loop

varp_pe_stiva:
movl $112, %eax
pushl %eax
jmp et_loop

valp_pe_stiva:
pushl p
jmp et_loop

var_q:
movl q, %ebx
cmp $0, %ebx
jg valq_pe_stiva
jle varq_pe_stiva
jmp et_loop

varq_pe_stiva:
movl $113, %eax
pushl %eax
jmp et_loop

valq_pe_stiva:
pushl q
jmp et_loop


var_r:
movl r, %ebx
cmp $0, %ebx
jg valr_pe_stiva
jle varr_pe_stiva
jmp et_loop

varr_pe_stiva:
movl $114, %eax
pushl %eax
jmp et_loop

valr_pe_stiva:
pushl r
jmp et_loop

var_s:
movl s, %ebx
cmp $0, %ebx
jg vals_pe_stiva
jle vars_pe_stiva
jmp et_loop

vars_pe_stiva:
movl $115, %eax
pushl %eax
jmp et_loop

vals_pe_stiva:
pushl s
jmp et_loop

var_t:
movl t, %ebx
cmp $0, %ebx
jg valt_pe_stiva
jle vart_pe_stiva
jmp et_loop

vart_pe_stiva:
movl $116, %eax
pushl %eax
jmp et_loop

valt_pe_stiva:
pushl t
jmp et_loop

var_u:
movl u, %ebx
cmp $0, %ebx
jg valu_pe_stiva
jle varu_pe_stiva
jmp et_loop

varu_pe_stiva:
movl $117, %eax
pushl %eax
jmp et_loop

valu_pe_stiva:
pushl u
jmp et_loop


var_v:
movl v, %ebx
cmp $0, %ebx
jg valv_pe_stiva
jle varv_pe_stiva
jmp et_loop

varv_pe_stiva:
movl $118, %eax
pushl %eax
jmp et_loop

valv_pe_stiva:
pushl v
jmp et_loop

var_w:
movl w, %ebx
cmp $0, %ebx
jg valw_pe_stiva
jle varw_pe_stiva
jmp et_loop

varw_pe_stiva:
movl $119, %eax
pushl %eax
jmp et_loop

valw_pe_stiva:
pushl w
jmp et_loop


operatie:
movl res, %edi
xorl %ecx, %ecx
movb (%edi, %ecx, 1), %al
cmp $108, %al

je let
cmp $97, %al
je adunare
cmp $115, %al
je scadere
cmp $109, %al
je inmultire
cmp $100, %al
je impartire


let:
popl %ebx
popl %edx
cmp $97, %edx
je atribuire_a
cmp $98, %edx
je atribuire_b
cmp $99, %edx
je atribuire_c
cmp $100, %edx
je atribuire_d
cmp $101, %edx
je atribuire_e
cmp $102, %edx
je atribuire_f
cmp $103, %edx
je atribuire_g
cmp $104, %edx
je atribuire_h
cmp $105, %edx
je atribuire_i
cmp $106, %edx
je atribuire_j
cmp $107, %edx
je atribuire_k
cmp $108, %edx
je atribuire_l
cmp $109, %edx
je atribuire_m
cmp $110, %edx
je atribuire_n
cmp $111, %edx
je atribuire_o
cmp $112, %edx
je atribuire_p
cmp $113, %edx
je atribuire_q
cmp $114, %edx
je atribuire_r
cmp $115, %edx
je atribuire_s
cmp $116, %edx
je atribuire_t
cmp $117, %edx
je atribuire_u
cmp $118, %edx
je atribuire_v
cmp $119, %edx
je atribuire_w
cmp $120, %edx
je atribuire_x
cmp $121, %edx
je atribuire_y

atribuire_x:
movl %ebx, x
jmp et_loop


atribuire_y:
movl %ebx, y
jmp et_loop

atribuire_a:
movl %ebx, a
jmp et_loop

atribuire_b:
movl %ebx, b
jmp et_loop


atribuire_c:
movl %ebx, c
jmp et_loop

atribuire_d:
movl %ebx, d
jmp et_loop

atribuire_e:
movl %ebx, e
jmp et_loop


atribuire_f:
movl %ebx, f
jmp et_loop

atribuire_g:
movl %ebx, g
jmp et_loop

atribuire_h:
movl %ebx, h
jmp et_loop

atribuire_i:
movl %ebx, i
jmp et_loop

atribuire_j:
movl %ebx, j
jmp et_loop

atribuire_k:
movl %ebx, k
jmp et_loop

atribuire_l:
movl %ebx, l
jmp et_loop

atribuire_m:
movl %ebx, m
jmp et_loop

atribuire_n:
movl %ebx, n
jmp et_loop

atribuire_o:
movl %ebx, o
jmp et_loop

atribuire_p:
movl %ebx, p
jmp et_loop

atribuire_q:
movl %ebx, q
jmp et_loop

atribuire_r:
movl %ebx, r
jmp et_loop

atribuire_s:
movl %ebx, s
jmp et_loop

atribuire_t:
movl %ebx, t
jmp et_loop

atribuire_u:
movl %ebx, u
jmp et_loop

atribuire_v:
movl %ebx, v
jmp et_loop

atribuire_w:
movl %ebx, w
jmp et_loop


adunare:
popl %ebx
popl %eax
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
