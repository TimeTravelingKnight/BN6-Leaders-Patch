naviAttack_subProtoBeast:
push r14
mov r0,0
strb r0,[r7,0]
strb r0,[r7,1]
strb r0,[r7,4]
strb r0,[r7,5]
strb r0,[r7,6]
mov r0,0x9E
strh r0,[r7,0xA]
mov r0,60;0x32
mov r1,20
bl 0x8012642
strh r0,[r7,0x8]
mov r0,0x80
strb r0,[r7,0x2]
;mov r0,1  ;enable lock-on
;strb r0,[r7,0x1D]
mov r0,0x47
strb r0,[r7,0x14] ;use sword as base for lock-on type
mov r0,0x61
pop r15
