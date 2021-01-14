	ldr x21, [x25,x20]
	ldr x5, [x14, #46]
	cmp x25, x5
	b.eq #0xC
	ldr x29, [x21, #84]
	b #0x8
	ldr x10, [x21]
