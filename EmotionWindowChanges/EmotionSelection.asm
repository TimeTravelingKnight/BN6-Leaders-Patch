BEASTEMOTION2:
mov r2,0xC
cmp r1,Kernel
beq @@SelectedKernel
cmp r1,Proto
beq @@SelectProto

add r6,r1,r2
mov r15,r14
@@SelectedKernel:
mov r6,KernelBeastOut
mov r15,r14
@@SelectProto:
mov r6,ProtoBeast
mov r15,r14

.vdef constantToCheckForgameVer,0x1,0x6
BEASTEMOTION:
mov r2,0xC
cmp r6,constantToCheckForgameVer+0x5
.if gamever == 0
beq @@SelectedKernel
.elseif gamever ==1
beq @@SelectedProto
.endif
add r6,r6,r2
mov r15,r14
@@SelectedKernel:
mov r6,KernelBeastOut
mov r15,r14
@@SelectedProto:
mov r6,ProtoBeast
mov r15,r14

.vdef escapewindowCheck,0x802A0b2,0x802A0b6
CheckForBeastinWindow:
cmp r1,Kernel
beq @@Normal
cmp r1,Proto
beq @@Normal
cmp r1,0xB
blt @@Normal
mov r15,r14
@@Normal:
bl escapewindowCheck

.vdef verExclusive,1,6
theWindowCheck:
ldr r5,=0x2035280
cmp r6,verExclusive+0x5
.if gamever==0
beq @@SelectedKernel
.elseif gamever==1
beq @@SelectedProto
.endif
mov r0,r6
mov r15,r14
@@SelectedKernel:
mov r0,Kernel
mov r15,r14
@@SelectedProto:
mov r0,Proto
mov r15,r14
.pool


CheckForBeast:
cmp r4,Kernel
beq @@CheckForTired
cmp r4,Proto
beq @@CheckForTired
cmp r4,0xA
bgt @@BeastOutWindow
@@CheckForTired:
mov r15,r14
@@BeastOutWindow:
bl 0x801E6EA ;same for both

CheckForBeastCustomScreen:
cmp r4,Kernel
beq @@CheckForTired
cmp r4,Proto
beq @@CheckForTired
cmp r4,0xA
bgt @@BeastOutWindow
@@CheckForTired:
mov r15,r14
@@BeastOutWindow:
bl 0x801E696

NewWindowEmotionSelection:
cmp r4,Kernel
beq KernelEmotionSelect
cmp r4,KernelBeastOut
beq KernelEmotionSelect
cmp r4,Kernel+5
beq KernelTiredSelect

cmp r4,Proto
beq KernelEmotionSelect
cmp r4,ProtoBeast
beq KernelEmotionSelect
cmp r4,Proto+5
beq KernelTiredSelect

ldr r1,=0x801CD08
ldr r0,[r1,r0]
mov r15,r14
KernelEmotionSelect:
ldr r0,=KernelEmotion
mov r15,r14
KernelTiredSelect:
ldr r0,=KernelTiredEmotion
mov r15,r14
.pool

.vdef palettesforemotions,0x872D050,0x872F114

NewPaletteEmotionSelection:
cmp r4,Kernel
beq KernelPalette
cmp r4,KernelBeastOut
beq KernelCrossBeastPalette
cmp r4,Kernel+5
beq KernelTiredPalette

cmp r4,Proto
beq KernelPalette
cmp r4,ProtoBeast
beq KernelCrossBeastPalette
cmp r4,Proto+5
beq KernelTiredPalette


ldr r1,=palettesforemotions
add r0,r0,r1
mov r15,r14
KernelPalette:
ldr r0,=PaletteEmotionColonelCross
mov r15,r14
KernelCrossBeastPalette:
ldr r0,=PaletteEmotionKernelCrossBeast
mov r15,r14
KernelTiredPalette:
ldr r0,=PaletteTiredKernelCross
mov r15,r14
.pool