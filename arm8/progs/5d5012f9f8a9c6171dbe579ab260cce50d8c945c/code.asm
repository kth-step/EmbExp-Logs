	ldr x22, [x2,x2]
	ldr x4, [x29, #0]
	cmp x2, x4
	b.eq #0xC
	ldr x4, [x22, #230]
	b #0x8
	ldr x8, [x10, #16]
