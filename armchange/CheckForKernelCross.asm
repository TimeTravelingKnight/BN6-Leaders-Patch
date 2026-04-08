chipaddrget equ 0x8027E1c

DetourGarbage:
push r14
bl chip_work_init_sub3
bl CheckKernelandSetArm
bl checkKernelBeastandSetChip
pop r15

checkKernelBeastandSetChip:
push r14
ldrb r0,[r5,0x10]
cmp r0,0
bne @@FINISH
cmp r7,KernelBeastOut
bne @@FINISH
ldr r1,=0x20349A0
ldrh r1,[r1,0xC]
mov r0,0xC 
mov r2,1
lsl r2,r0
tst r1,r2
bne @@FINISH
ldr r0,=0x400|0x19B
strh r0,[r5,0x22]
mov r0,0x9
bl chipaddrget
mov r1,0
strb r1,[r0]
strb r1,[r0,4]
mov r1,0x22
add r1,r1,r5
str r1,[r0,8]
@@FINISH:
pop r15
.pool


CheckKernelandSetArm:
push r14
ldrb r0,[r5,0x10]
cmp r0,0
bne @@FINISH
cmp r7,Kernel

;beq @@BRANCH2
;cmp r7,KernelBeastOut
bne @@BRANCH3
@@BRANCH2:
mov r0,ArmChangeIndex
mov r1,0x60
add r1,r1,r4
strb r0,[r1]
mov r0,ArmChangeIndex+1
strb r0,[r1,0xC]
mov r0,0x1
ldr r2,[r5,0x30]
sub r0,r0,r2
strb r0,[r1,0x4]
mov r0,0x1
strb r0,[r1,0x7]
@@BRANCH3:
mov r0,0xB
strb r0,[r1,0x3]
mov r0,0x7
strb r0,[r1,0xE]

@@FINISH:
pop r15

