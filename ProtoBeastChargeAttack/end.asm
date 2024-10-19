@BattleHitStatusOff equ 0x801A15C
@NaviAttackOff equ 0x8011714
ProtoChargeEnd:
push r14
ldrh r0,[r7,0x10]
sub r0,0x1
strh r0,[r7,0x10]
bgt @@Escape
mov r0,0x1
lsl r0,r0,0x16
bl @BattleHitStatusOff
bl @NaviAttackOff
@@Escape:
pop r15