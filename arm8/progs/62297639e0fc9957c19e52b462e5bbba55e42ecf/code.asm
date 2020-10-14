	ldr x23, [x8,x26]
	ldr x3, [x0, #0]
	cmp x8, x3
	b.eq #0xC
	ldr x17, [x23, #230]
	b #0x8
	ldr x29, [x5, #8]
