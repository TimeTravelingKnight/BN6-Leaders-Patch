@naviinfo equ 0x8013774|1 ;same for both

saberload:
push r4,r7,r14
mov r7,0x0
ldr r4,[r5,0x58]
ldrb r0,[r4]
ldrb r1,[r4,0x1]
;ldrb r6,[r4,0x3]
cmp r0,0x0
beq LoadSaber
cmp r0,0x1
bne JumpThere
cmp r0,0xD
bge LoadSaber
mov r7,r1
b LoadSaber
JumpThere:
cmp r0,0x2
bne LoadSaber
cmp r1,0x0
beq Jump2
cmp r1,0x13
bne Jump3
mov r1,0xE
Jump3:
mov r7,r1
b LoadSaber
Jump2:
mov r1,0x2C
BXwithR11 @naviinfo
mov r7,0xF
;cmp r6,0x3
;bne LoadingDefaultSaber
cmp r0,Kernel
beq LoadSaber
LoadingDefaultSaber:
mov r7,0x0
cmp r0,0xB
blt LoadSaber
cmp r0,Proto
beq LoadSaber
mov r7,0xC
cmp r0,0xC
beq SomeSaber
cmp r0,0x17
beq LoadSaber
cmp r0,0x11
ble LoadSaber
cmp r0,KernelBeastOut
beq LoadSaber
SomeSaber:
mov r7,0xD
LoadSaber:
mov r0,r7
pop r4,r7,r15
.pool