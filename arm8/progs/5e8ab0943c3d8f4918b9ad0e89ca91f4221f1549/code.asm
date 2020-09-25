	ldr x3, [x24,x18]
	ldr x8, [x23, #0]
	cmp x24, x8
	b.eq #0xC
	ldr x5, [x3, #191]
	b #0x8
	ldr x18, [x28]
