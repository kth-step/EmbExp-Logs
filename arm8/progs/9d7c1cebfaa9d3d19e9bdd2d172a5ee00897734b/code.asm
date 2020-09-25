	ldr x27, [x23,x23]
	ldr x0, [x1, #0]
	cmp x23, x0
	b.eq #0xC
	ldr x25, [x27, #138]
	b #0x8
	ldr x13, [x26, #16]
