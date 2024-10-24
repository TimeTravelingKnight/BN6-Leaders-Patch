@SetCommonSeqNo equ 0x800F2b6
@ReserveReset equ 0x801BB46
@BlockPos equ 0x800E29C
@BlockPosSet equ 0x801A04C
@BattleStatusFlagOff equ 0x801A15C	
@GetBlockPos equ 0x800E276
@CalcPlEmDirSpd equ 0x800E2CA
@AccessoryReset equ 0x8011450
ReturnFromHere:
push r14
ldrh r0,[r7,0x10]
sub r0,0x1
strh r0,[r7,0x10]
bgt @@Escape

bl @CalcPlEmDirSpd
ldrb r1,[r5,0x12]
add r1,r1,r0

mov r0,r1
ldrb r1,[r5,0x13]
bl @GetBlockPos
mov r2,r1
mov r1,r0
mov r3,25
add r0,r0,r3
mov r3,0
ldrb r0,[r5,0x16]
ldrb r4,[r5,0x17]
eor r0,r4
lsl r0,r0,8
mov r4,4
orr r4,r0
bl EFC31SET


bl @AccessoryReset

mov r0,0x3
bl @SetCommonSeqNo
ldrb r0,[r5,0x14]
ldrb r1,[r5,0x15]
strb r0,[r5,0x12]
strb r1,[r5,0x13]
bl @ReserveReset
bl @BlockPos
bl @BlockPosSet 
mov r0,0x40
bl @BattleStatusFlagOff 
mov r0,0x10
strh r0,[r7]
mov r0,0x3
strh r0,[r7,0x10]

@@Escape:
pop r15



