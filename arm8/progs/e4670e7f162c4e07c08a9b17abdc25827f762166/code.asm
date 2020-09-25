	ldr x27, [x12,x20]
	ldr x3, [x26, #0]
	cmp x12, x3
	b.eq #0xC
	ldr x23, [x27, #54]
	b #0x8
	ldr x11, [x25, #16]
