ShuffleDontOverWrite:
ldrb  r1,[r0]
cmp r1,ArmChangeIndex
beq @@DontOverWrite
cmp r1,0x8
beq @@DontOverWrite
ldrh r1,[r5,0x22] ;do we have a chip
cmp r1,0
bne @@DontOverWrite
mov r15,r14
@@DontOverWrite:
mov r0,r4
pop r4,r15

.vdef checkifNumberProgram,0x802A59C,0x802A5A0
BeastCheckForGold:
push r14
ldrb r0,[r6,0xD]
bl 0x8015b54 ;koko
cmp r1,KernelBeastOut
beq @@DontSetNumber
@@FINISH:
bl checkifNumberProgram 
pop r15
@@DontSetNumber:
ldr r1,=0x20349A0
ldrh r1,[r1,0xC]
mov r0,0xC 
mov r2,1
lsl r2,r0
tst r1,r2
bne @@FINISH
mov r0,0
pop r15
.pool