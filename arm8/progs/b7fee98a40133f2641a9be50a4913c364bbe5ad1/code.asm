	ldr x19, [x3,x12]
	ldr x23, [x7, #0]
	cmp x3, x23
	b.eq #0xC
	ldr x10, [x19, #230]
	b #0x8
	ldr x19, [x17, #8]
