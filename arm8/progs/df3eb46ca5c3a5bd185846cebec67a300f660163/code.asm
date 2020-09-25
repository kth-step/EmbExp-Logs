	ldr x10, [x9,x24]
	ldr x12, [x24, #0]
	cmp x9, x12
	b.eq #0xC
	ldr x26, [x10, #115]
	b #0x8
	ldr x29, [x25, #8]
