;0x80F0988,0x80EF648
.vdef varswordfail,0x80F0Ab4,0x80EF774
.vdef Neovarswordfail,0x80F0c34,0x80EF8f4
varDelay:
cmp r1,0x3
beq @@SlashRoute
cmp r1,0xF
beq @@SlashRoute
cmp r1,Proto
beq @@SlashRoute
cmp r1,ProtoBeast
bne @@StartVarSword
@@SlashRoute:
pop r4,r15
@@StartVarSword:
ldr r0,=varswordfail|1
bx r0
.pool

NeoVarDelay:
cmp r1,0x3
beq @@SlashRoute
cmp r1,0xF
beq @@SlashRoute
cmp r1,Proto
beq @@SlashRoute
cmp r1,ProtoBeast
bne @@StartVarSword
@@SlashRoute:
pop r4,r15
@@StartVarSword:
ldr r0,=Neovarswordfail|1
bx r0
.pool

