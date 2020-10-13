	ldr x18, [x14,x4]
	ldr x16, [x7, #0]
	cmp x14, x16
	b.eq #0xC
	ldr x25, [x18, #69]
	b #0x8
	ldr x26, [x13]
