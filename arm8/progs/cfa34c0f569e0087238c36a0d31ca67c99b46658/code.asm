	ldr x23, [x28,x15]
	ldr x7, [x12, #0]
	cmp x28, x7
	b.eq #0xC
	ldr x7, [x23, #230]
	b #0x8
	ldr x29, [x23]
