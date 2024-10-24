@SetCommonSeq equ 0x800F2B6
@BattleHitStatusOn equ 0x801A152
@AccessoryReset equ 0x8011450
@CounterTimerSet equ 0x800FDB6

@em_sub2_SetCommonSeqNo equ 0x800F2b6

ProtoBeastAttack:
push r14
ldrh r0,[r7,0x10]
cmp r0 ,0x8
bne @@CounterSet 
mov r0,15
bl @SetCommonSeq
@@CounterSet:
ldrh r0,[r7,0x10]
sub r0,0x1
strh r0,[r7,0x10]
bgt @@Finish
mov r0,0x7
strh r0,[r7,0x10]
mov r0,0x1
lsl r0,r0,0x16
bl @BattleHitStatusOn 


mov r0,5
bl @em_sub2_SetCommonSeqNo
bl @AccessoryReset
bl @CounterTimerSet
push r7
bl navi_sword_color
mov r4,r0
lsl r4,r4,0x10
bl navi_sword_arm_seq_check0
add r4,r4,r0
lsl r4,r4,0x8
bl navi_sword_arm_type_check0
add r4,r4,r0
mov r7,0x4C
add r7,r7,r5
bl setEm05^1

pop r7






mov r0,0x8
strh r0,[r7]




@@Finish:
pop r15
  		