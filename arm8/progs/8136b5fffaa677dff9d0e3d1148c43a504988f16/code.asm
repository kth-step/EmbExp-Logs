	ldr x9, [x10,x8]
	ldr x16, [x15, #230]
	cmp x10, x16
	b.eq #0xC
	ldr x18, [x9, #203]
	b #0x8
	ldr x29, [x8, #8]
