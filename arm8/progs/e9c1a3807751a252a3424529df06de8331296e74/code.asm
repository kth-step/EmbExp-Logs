	ldr x10, [x3,x14]
	ldr x22, [x10, #0]
	cmp x3, x22
	b.eq #0xC
	ldr x7, [x10, #222]
	b #0x8
	ldr x27, [x11]
