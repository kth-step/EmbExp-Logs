	ldr x10, [x25,x8]
	ldr x5, [x18, #0]
	cmp x25, x5
	b.eq #0xC
	ldr x9, [x10, #54]
	b #0x8
	ldr x2, [x22]
