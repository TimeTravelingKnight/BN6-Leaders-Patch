naviAttack_subProtoBeast:
push r14
mov r0,0
strb r0,[r7,4]
strb r0,[r7,5]
strb r0,[r7,6]
mov r0,0x9E
strh r0,[r7,0xA]
mov r0,0x32
mov r1,0x1E
bl 0x8012642
strh r0,[r7,0x8]
mov r0,0x80
strb r0,[r7,0x2]
mov r0,0x61
pop r15
