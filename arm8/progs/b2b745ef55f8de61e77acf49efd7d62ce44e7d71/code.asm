	ldr x27, [x24,x28]
	ldr x5, [x0, #0]
	cmp x24, x5
	b.eq #0xC
	ldr x28, [x27, #230]
	b #0x8
	ldr x26, [x16, #16]
