	ldr x6, [x29,x12]
	ldr x26, [x11, #0]
	cmp x29, x26
	b.eq #0xC
	ldr x18, [x6, #34]
	b #0x8
	ldr x6, [x23]
