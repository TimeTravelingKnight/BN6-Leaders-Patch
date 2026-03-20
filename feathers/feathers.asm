feathercheck:
cmp r0,0xC
beq @@FalzarIsActive
cmp r0,0x12
blt @@Done
cmp r0,0x16
ble @@FalzarIsActive
cmp r0,0x18
beq @@FalzarIsActive
cmp r0,ProtoBeast
bne @@Done
@@FalzarIsActive:
ldr r0,[r5,0x50]
strb r4,[r0,0x10]
mov r1,0xFF
strb r1,[r0,0x11]
@@Done:
pop r4,r15

