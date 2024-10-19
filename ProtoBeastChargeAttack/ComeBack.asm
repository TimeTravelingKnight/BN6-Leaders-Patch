@SetCommonSeqNo equ 0x800F2b6
@ReserveReset equ 0x801BB46
@BlockPos equ 0x800E29C
@BlockPosSet equ 0x801A04C
@BattleStatusFlagOff equ 0x801A15C	


ReturnFromHere:
push r14
ldrh r0,[r7,0x10]
sub r0,0x1
strh r0,[r7,0x10]
bgt @@Escape
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



