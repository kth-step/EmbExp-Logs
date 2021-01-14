	ldr x21, [x18,x7]
	ldr x24, [x26, #70]
	cmp x18, x24
	b.eq #0xC
	ldr x17, [x21, #70]
	b #0x8
	ldr x16, [x25, #8]
