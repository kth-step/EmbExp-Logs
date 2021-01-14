	ldr x10, [x29,x24]
	ldr x13, [x11, #233]
	cmp x29, x13
	b.eq #0xC
	ldr x14, [x10, #25]
	b #0x8
	ldr x26, [x29]
