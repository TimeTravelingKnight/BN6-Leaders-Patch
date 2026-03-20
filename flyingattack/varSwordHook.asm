

.vdef varswordcheckSlash,0x80f0a94,0x80EF754 


.org varswordcheckSlash
ldr r0,=varDelay|1
bx r0
.pool

.vdef neovarswordcheckSlash,0x80f0c14,0x80ef8d4

.org neovarswordcheckSlash
ldr r0,=NeoVarDelay|1
bx r0
.pool