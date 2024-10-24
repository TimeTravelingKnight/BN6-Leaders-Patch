@em_sub2_SetCommonSeqNo equ 0x800F2b6
@CalcPlEmDirSpd equ 0x800E2CA
@GetBlockPos equ 0x800E276
.vdef SetShlNew03,0x80C6BDA,0x80C536A
.vdef EFC31SET,0x80E52F4,0x80E3Fb4
@FlipCheck equ 0x800E456 
.vdef Parameters2, 0x8104CC0,0x8103998
@CounterTimer equ 0x800FDB6
@newSoundReq equ 0x80005CC
@AccessoryReset equ 0x8011450
;.vdef navi_sword_arm_type_check0,0x80ECE74,0x80EBB34
;.vdef navi_sword_arm_seq_check0, 0x80ECE28,0x80EBAE8
.vdef navi_sword_color, 0x80ECEB8,0x80EBB78
;.vdef setEm05NonBX, 0x80BA6A0,0x80B8E30

ProtoBeastAttack2:
push r4,r6,r7,r15
ldrb r0,[r7,0x10]
cmp r0,0x7
bne @@CounterDown

bl MakingClones


;bl @CounterTimer
mov r0,0x59
add r0,0xFF
bl @newSoundReq 




@@CounterDown:
ldrh r0,[r7,0x10]
sub r0,1
strh r0,[r7,0x10]
bgt @@Escape
push r7
bl @CalcPlEmDirSpd
ldrb r1,[r5,0x12]
add r1,r1,r0
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
add r1,r1,r0
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


mov r0,0x4
bl @em_sub2_SetCommonSeqNo
mov r0,0x3
strh r0,[r7,0x10]
mov r0,0xC
strh r0,[r7]

mov r0,0
str r0,[r5,0x4C]
ldr r1,[r5,0x58]
str r0,[r1,0x68]
strb r0,[r7,0x1]

@@Escape:
pop r4,r6,r7,r15
.pool
