	ldr x6, [x10,x2]
	ldr x22, [x29, #0]
	cmp x10, x22
	b.eq #0xC
	ldr x3, [x6, #230]
	b #0x8
	ldr x16, [x1]
