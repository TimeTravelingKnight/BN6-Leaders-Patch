.vdef LOCKON2, 0x80E298A,0x80E164A
ChangeAttack:
push r5,r14
ldr r5,=0x203A9b0
bl LOCKON2
pop r5,r15
.pool