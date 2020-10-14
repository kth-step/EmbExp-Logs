	ldr x18, [x4,x4]
	ldr x17, [x9, #0]
	cmp x4, x17
	b.eq #0xC
	ldr x26, [x18, #175]
	b #0x8
	ldr x25, [x15, #8]
