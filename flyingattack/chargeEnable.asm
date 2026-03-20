BattleNaviLvGet equ 0x800F49E
ChargeCheck:
cmp r6,Proto
beq @@KernelChargeEnable
cmp r6,ProtoBeast
bne @@Escape
@@KernelChargeEnable:
ldr r2,[sp]
cmp r2,0x4C
blt @@CheckType
cmp r2,0x4F
ble @@EnableCharge
@@CheckType:
cmp r4,0x5
bne @@Escape
@@EnableCharge:
mov r0,0x2
tst r0,r1
beq @@Escape
mov r0,0x1
tst r0,r1
bne @@Escape
mov r0,1
add r13,4
pop r4,r6,r7,r15
@@Escape:
push r14
bl BattleNaviLvGet 
pop r15