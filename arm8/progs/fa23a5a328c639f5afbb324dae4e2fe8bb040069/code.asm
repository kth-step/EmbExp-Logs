	ldr x29, [x23,x24]
	ldr x13, [x19, #132]
	cmp x23, x13
	b.eq #0xC
	ldr x14, [x29, #62]
	b #0x8
	ldr x10, [x18]
