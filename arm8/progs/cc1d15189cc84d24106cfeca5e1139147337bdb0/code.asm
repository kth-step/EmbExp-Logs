	ldr x14, [x6,x11]
	ldr x2, [x27, #32]
	cmp x6, x2
	b.eq #0xC
	ldr x24, [x14, #188]
	b #0x8
	ldr x29, [x11, #16]
