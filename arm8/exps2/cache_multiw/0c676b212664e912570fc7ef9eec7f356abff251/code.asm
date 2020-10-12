	ldr x26, [x5, #28]
	ldr x8, [x18, #114]
	cmp x26, x8
	b.eq #0xC
	ldr x19, [x11, #132]
	b #0x8
	ldr x26, [x25]
