
@Buster equ 0x08012642
@setAtkWorkChipId2 equ 0x8021AA4
@SetAttack equ 0x8011680
HeroSword:
push r14
ldr r0,=0x172
bl @setAtkWorkChipId2
mov r4,r0
ldrb r1,[r4,0xC]
strb r1,[r7,0x3]
ldr r1,[r4,0x10]
str r1,[r7,0xC]
mov r0,0x80
strb r0,[r7,0x2]
ldrb r0,[r7,0xA]
mov r1,0x80
orr r0,r1
strb r0,[r7,0xA]
ldrb r0,[r4,0xB]
bl @SetAttack
mov r0,0x28
mov r1,0x14
bl @Buster
strh r0,[r7,0x8]
ldrb r0,[r5,0x9]
pop r15
.pool