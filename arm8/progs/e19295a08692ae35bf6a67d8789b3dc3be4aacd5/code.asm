	ldr x25, [x9,x7]
	ldr x14, [x0, #0]
	cmp x9, x14
	b.eq #0xC
	ldr x15, [x25, #170]
	b #0x8
	ldr x27, [x0, #8]
