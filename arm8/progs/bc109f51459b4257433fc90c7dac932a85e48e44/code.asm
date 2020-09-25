	ldr x7, [x15,x8]
	ldr x22, [x17, #0]
	cmp x15, x22
	b.eq #0xC
	ldr x18, [x7, #230]
	b #0x8
	ldr x10, [x8, #8]
