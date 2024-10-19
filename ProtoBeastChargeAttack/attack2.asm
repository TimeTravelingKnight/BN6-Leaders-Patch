@em_sub2_SetCommonSeqNo equ 0x800F2b6
@CalcPlEmDirSpd equ 0x800E2CA
@GetBlockPos equ 0x800E276
.vdef SetShlNew03,0x80C6BDA,0x80C536A
.vdef EFC31SET,0x80E52F4,0x80E3Fb4
@FlipCheck equ 0x800E456 
.vdef Parameters2, 0x8104CC0,0x8103998
@CounterTimer equ 0x800FDB6
@newSoundReq equ 0x80005CC
ProtoBeastAttack2:
push r4,r6,r7,r15
ldrb r0,[r7,0x10]
cmp r0,0x14
beq @@CounterDown

bl @CalcPlEmDirSpd
ldrb r1,[r5,0x12]
add r0,r0,r1
ldrb r1,[r5,0x13]
bl @GetBlockPos
mov r2,r1
mov r1,r0
mov r3,0
ldrb r0,[r5,0x16]
ldrb r4,[r5,0x17]
eor r0,r4
lsl r0,r0,8
mov r4,4
orr r4,r0
bl EFC31SET
push r7
bl @CalcPlEmDirSpd
ldrb r1,[r5,0x12]
add r1,r1,r0
mov r0,r1
ldrb r1,[r5,0x13]
mov r2,0
mov r3,0 
ldr r4,=Parameters2
ldr r4,[r4]
ldr r6,[r7,0x8]
mov r7,0x3
bl SetShlNew03

bl @CalcPlEmDirSpd
ldrb r1,[r5,0x12]
mov r0,r1
ldrb r1,[r5,0x13]
mov r2,0
mov r3,0 
ldr r4,=0x0705FF01
ldr r6,[r7,0x8]
add r6,r6,r6
mov r7,0x3
bl SetShlNew03

pop r7

bl @CounterTimer
mov r0,0x59
add r0,0xFF
bl @newSoundReq 




@@CounterDown:
ldrh r0,[r7,0x10]
sub r0,1
strh r0,[r7,0x10]
bgt @@Escape
mov r0,0x4
bl @em_sub2_SetCommonSeqNo
mov r0,0x3
strh r0,[r7,0x10]
mov r0,0xC
strh r0,[r7]

@@Escape:
pop r4,r6,r7,r15
.pool
