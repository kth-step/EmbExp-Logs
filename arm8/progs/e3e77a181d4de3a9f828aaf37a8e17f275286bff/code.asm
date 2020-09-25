	ldr x25, [x2,x3]
	ldr x10, [x28, #0]
	cmp x2, x10
	b.eq #0xC
	ldr x29, [x25, #230]
	b #0x8
	ldr x20, [x20]
