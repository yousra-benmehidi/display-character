.data
message: .asciiz "a"
num: .byte 97

.text
.globl main
.ent main
main:
#cas 1
la $a0, message
li $v0, 4
syscall

#cas2
lb $a0,message
li $v0,11
syscall 

#cas3
li $a0, 97
li $v0, 11
syscall


#cas4
lb $a0, num
li $v0, 11
syscall

li $v0, 10
syscall
.end main