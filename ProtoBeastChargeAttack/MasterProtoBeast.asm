.align 2
.include "end.asm"
.include "ComeBack.asm"
.include "attack2.asm"
.include "attack.asm"
.include "init.asm"
.include "SetProtoBeastAttack.asm"

MainForProtoBeast:
push r14
ldr r1,=PoolForProtoBeast
ldrb r0,[r7]
ldr r1,[r1,r0]
mov r14,r15
bx r1
pop r15

.pool
PoolForProtoBeast:
.dw ProtoBeastInitAttack|1, ProtoBeastAttack|1,ProtoBeastAttack2|1,ReturnFromHere|1, ProtoChargeEnd|1