ShuffleDontOverWrite:
ldrb  r1,[r0]
cmp r1,ArmChangeIndex
beq @@DontOverWrite
cmp r1,0x8
beq @@DontOverWrite
mov r15,r14
@@DontOverWrite:
mov r0,r4
pop r4,r15