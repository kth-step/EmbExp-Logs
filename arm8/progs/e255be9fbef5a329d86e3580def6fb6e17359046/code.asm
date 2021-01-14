	ldr x24, [x29,x11]
	ldr x13, [x8, #73]
	cmp x29, x13
	b.eq #0xC
	ldr x25, [x24, #184]
	b #0x8
	ldr x26, [x23, #4]
