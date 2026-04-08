.vorg 0x80EB080,0x80E9D40
bl ChangeAttack


.vorg 0x80D0ED6,0x80CF666
mov r1,0x63
.vorg 0x80d0eee,0x80CF67E
mov r1,0x63
.vorg 0x81049E0,0x81036b8
nop
nop
.vorg 0x80E69C2,0x80E5682
mov r0,15

.vorg 0x8104E50,0x8103b28
bl getDirectionTest
.vorg 0x8104E6E,0x8103B46
bl getDirectionTest

;.if gamever == 0


;.org 0x80D0ED6
;mov r1,0x60
;.org 0x80d0eee
;mov r1,0x60
;.org 0x81049E0
;nop
;nop
;.org 0x80E69C2
;mov r0,15

;.org 0x8104E50
;bl getDirectionTest
;.org 0x8104E6E
;bl getDirectionTest


;.endif


