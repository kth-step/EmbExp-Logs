	ldr x10, [x9,x24]
	ldr x18, [x24, #0]
	cmp x9, x18
	b.eq #0xC
	ldr x22, [x10, #159]
	b #0x8
	ldr x13, [x29, #8]
