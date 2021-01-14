	ldr x18, [x9,x11]
	ldr x16, [x5, #164]
	cmp x9, x16
	b.eq #0xC
	ldr x29, [x18, #95]
	b #0x8
	ldr x19, [x10, #8]
