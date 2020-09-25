	ldr x26, [x9,x24]
	ldr x0, [x29, #0]
	cmp x9, x0
	b.eq #0xC
	ldr x14, [x26, #201]
	b #0x8
	ldr x13, [x3, #4]
