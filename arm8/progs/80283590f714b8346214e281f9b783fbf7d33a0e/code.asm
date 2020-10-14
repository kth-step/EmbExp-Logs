	ldr x5, [x9,x20]
	ldr x26, [x10, #0]
	cmp x9, x26
	b.eq #0xC
	ldr x16, [x5, #119]
	b #0x8
	ldr x9, [x4, #16]
