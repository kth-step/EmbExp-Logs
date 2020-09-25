	ldr x9, [x11,x22]
	ldr x26, [x8, #0]
	cmp x11, x26
	b.eq #0xC
	ldr x15, [x9, #54]
	b #0x8
	ldr x2, [x14, #16]
