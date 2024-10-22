.vdef navi_sword_arm_type_check0,0x80ECE74,0x80EBB34
.vdef navi_sword_arm_seq_check0, 0x80ECE28,0x80EBAE8
.vdef SetEFC28, 0x80E473A,0x80E33FA
.vdef em05IDGet, 0x80BA6D2,0x80B8E62
@PosToBlock equ 0x800E276
@EnemyFlipCheck equ 0x800E456
@CalcPlEmDirSpd equ 0x800E2CA
MakingClones:
push r7,r14
push r7
bl @EnemyFlipCheck


mov r4,r0
lsl r4,r4,0x8
mov r0,0x5
add r4,r4,r0
lsl r4,r4,0x10
add r4,0xFF
;mov r0,0x34
;add r0,r0,r5
;ldmia [r0]!,r1-r3

bl @CalcPlEmDirSpd
ldrb r1,[r5,0x12]
ldrb r2,[r5,0x13]
add r1,r1,r0
add r1,r1,r0
mov r0,r1
mov r1,r2
bl @PosToBlock

mov r2,r1
mov r1,r0
mov r3,0



ldr r6,=0xFFE0
ldr r7,=0x101001E
push r1-r7

mov r0,1
lsl r0,r0,0x18
eor r4,r0

bl SetEFC28
pop r1-r7
push r1-r7

ldrb r0,[r5,0x12]
ldrb r1,[r5,0x13]
add r1,1
bl @PosToBlock

mov r2,r1
mov r1,r0
mov r3,0

bl SetEFC28
pop r1-r7

ldrb r0,[r5,0x12]
ldrb r1,[r5,0x13]
sub r1,1
bl @PosToBlock 
mov r2,r1
mov r1,r0
mov r3,0


bl SetEFC28

pop r7
bl @EnemyFlipCheck
mov r4,r0
lsl r4,r4,0x8

bl navi_sword_arm_seq_check0 
add r4,r4,r0
lsl r4,r4,0x8
bl navi_sword_arm_type_check0
bl em05IDGet
add r4,r4,r1
lsl r4,r4,0x8
add r4,r4,r0
;mov r0,0x34
;add r0,r0,r5
;ldmia [r0]!,r1-r3
ldr r6,=0xFFE0
ldr r7,=0x1E
push r1-r7

ldrb r0,[r5,0x12]
ldrb r1,[r5,0x13]
sub r1,1
bl @PosToBlock 
mov r2,r1
mov r1,r0
mov r3,0


bl SetEFC28
pop r1-r7
push r1-r7

ldrb r0,[r5,0x12]
ldrb r1,[r5,0x13]
add r1,1
bl @PosToBlock 

mov r2,r1
mov r1,r0
mov r3,0

bl SetEFC28
pop r1-r7
bl @CalcPlEmDirSpd
ldrb r1,[r5,0x12]
ldrb r2,[r5,0x13]
add r1,r1,r0
add r1,r1,r0
mov r0,r1
mov r1,r2
bl @PosToBlock 
mov r2,r1
mov r1,r0
mov r3,0

mov r0,1
lsl r0,r0,0x18
eor r4,r0


bl SetEFC28
pop r7,r15
.pool