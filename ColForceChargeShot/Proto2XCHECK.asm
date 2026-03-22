gettingNAVIINFO3 equ 0x8013774

TAKEOVER2XPROTO:
push r14
mov r1,0x2C
bl gettingNAVIINFO3
cmp r0,Proto
beq @@Get2X
cmp r0,ProtoBeast
beq @@Get2X
mov r1,0x29
bl gettingNAVIINFO3
pop r15
@@Get2X:
cmp r6,0x4C
blt @@CheckType
cmp r6,0x4F
ble @@EnableCharge
@@CheckType:
mov r0,0xB
pop r15
@@EnableCharge:
mov r6,0x47
b @@CheckType
