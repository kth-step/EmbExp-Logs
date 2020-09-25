	ldr x27, [x12,x28]
	ldr x2, [x8, #0]
	cmp x12, x2
	b.eq #0xC
	ldr x25, [x27, #2]
	b #0x8
	ldr x11, [x14, #16]
