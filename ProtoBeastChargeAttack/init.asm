@BattleHitStatusOff equ 0x801A15C
@em_sub2_SetCommonSeqNo equ 0x800F2b6
@reverse_RevereSet equ  0x801BB1C
@BlockPosSet       equ      0x801A04C
.vdef LockOnTech,0x80F02FC,0x80EEFBC
ProtoBeastInitAttack:
push r4,r14
ldrb r0,[r7,0x1]
tst r0,r0
bne @@Branch1
mov r0,0x1
strb r0,[r7,0x1]
mov r0,0x40
bl @BattleHitStatusOff
mov r0,0x3
strh r0,[r7,0x10]
mov r0,0x4
bl @em_sub2_SetCommonSeqNo
ldrb r0,[r5,0x12]
ldrb r1,[r5,0x13]
bl @reverse_RevereSet
@@Branch1: 
ldrh r0,[r7,0x10]
sub r0,0x1
strh r0,[r7,0x10]
bgt @@Escape
bl LockOnTech
strb r0,[r5,0x12]
strb r1,[r5,0x13]
bl @BlockPosSet
mov r0,0xB
strh r0,[r7,0x10]
mov r0,0x3
bl @em_sub2_SetCommonSeqNo
mov r0,0x4
strh r0,[r7]
@@Escape:
pop r4,r15



