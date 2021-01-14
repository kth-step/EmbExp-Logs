	ldr x26, [x17,x3]
	ldr x5, [x17, #212]
	cmp x17, x5
	b.eq #0xC
	ldr x23, [x26, #242]
	b #0x8
	ldr x15, [x17]
