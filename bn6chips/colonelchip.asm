.byte 0x2 ;code
.byte 0xFF ;code
.byte 0xFF ;code
.byte 0xFF ;code
.byte 0x0 ; element
.byte 0x4 ; chip rarity
.byte 0x9 ; element icon
.byte 0x3 ; chip lib
.byte 99 ; size
.byte 0x02; flags
.byte 0 ; mood
.byte 0x63 ;attackindex
.byte 0x0 ;subattackindex 
.byte 0;darksoulstuff
.byte 0; darksoulstuff2
.byte 0 ;lockon
.byte 0x00, 0x00, 0x00, 0x00; 10-13 Attack Parameters
.byte 0; 14 Chip Use Delay
.byte 0; 15 Library Number
.byte 0x00; 16 Library Flags
.byte 0x00; 17 Lock On Type
.halfword 0; 18 ABC Sort
.halfword 500; 1A Damage
.halfword 411; 1C ID Sort
.byte 1; 1E Chip Gate Use Limit
.byte 0; 1F unk1F
.if gamever == 0
.dw  0x872AE50
.elseif gamever == 1 
.dw 0x872CF14 
.endif 
.dw newColonelChipIcon
.dw ColonelChipPal

