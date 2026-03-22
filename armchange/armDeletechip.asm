custom_select_chip_del equ 0x80293F8
armDetourDelete:
push r14
bl custom_select_chip_del
bl armDeleteChip
pop r15


CustomChipAddrI equ 0x8027E1C 
kokoEmote equ 0x8015b54
armDeleteChip:
push r7,r14
mov r0,r10
ldr r0,[r0,0x18]
ldrb r0,[r0,0xD] ;current side
ldrb r1,[r5,0x10] ;navi
cmp r1,0
bne @@FINISH
bl kokoEmote 
mov r7,r1
cmp r7,Kernel;koko
bne @@FINISH
mov r7,0
sub r7,1
mov r0,0x8
bl CustomChipAddrI
ldrb r1,[r0,0x7]
cmp r1,0x2
bne @@FINISH
ldrb r0,[r0,0x4]
bl CustomChipAddrI 
ldrb r1,[r0,4]
mov r2,1
tst r1,r2
beq @@RemoveChip
;reg chip
mov r2,r10
ldr r2,[r2,0x18]
mov r1,0
strb r1,[r2,0x17]
@@RemoveChip:
ldr r0,[r0,8]
strh r7,[r0]
mov r1,0x44 ;tag chip
mov r2,r10
ldr r2,[r2,0x18]
ldrb r3,[r2,r1]
tst r3,r3
beq @@FINISH
mov r1,0x45 ;tag chip counter
mov r2,r10
ldr r2,[r2,0x18]
ldrb r3,[r2,r1]
sub r3,1
strb r3,[r2,r1]
@@FINISH:
pop r7,r15

