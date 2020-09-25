	ldr x28, [x26,x24]
	ldr x3, [x24, #0]
	cmp x26, x3
	b.eq #0xC
	ldr x21, [x28, #17]
	b #0x8
	ldr x15, [x13]
