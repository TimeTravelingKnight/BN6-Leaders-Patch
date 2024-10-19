@SetCommonSeq equ 0x800F2B6
@BattleHitStatusOn equ 0x801A152
ProtoBeastAttack:
push r14
ldrh r0,[r7,0x10]
cmp r0 ,0x8
bne @@CounterSet 
mov r0,0x15
bl @SetCommonSeq
@@CounterSet:
ldrh r0,[r7,0x10]
sub r0,0x1
strh r0,[r7,0x10]
bgt @@Finish
mov r0,0x14
strh r0,[r7,0x10]
mov r0,0x1
lsl r0,r0,0x16
bl @BattleHitStatusOn 
mov r0,12
bl @SetCommonSeq
mov r0,0x8
strh r0,[r7]
@@Finish:
pop r15
  		