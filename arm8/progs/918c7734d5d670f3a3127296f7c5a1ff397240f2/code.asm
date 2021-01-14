	ldr x10, [x15,x14]
	ldr x18, [x11, #251]
	cmp x15, x18
	b.eq #0xC
	ldr x3, [x10, #33]
	b #0x8
	ldr x6, [x29, #8]
