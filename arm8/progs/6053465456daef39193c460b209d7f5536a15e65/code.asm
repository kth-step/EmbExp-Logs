	ldr x29, [x17,x25]
	ldr x4, [x26, #0]
	cmp x17, x4
	b.eq #0xC
	ldr x13, [x29, #170]
	b #0x8
	ldr x14, [x1, #16]
