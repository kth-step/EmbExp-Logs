	ldr x26, [x8,x23]
	ldr x7, [x25, #0]
	cmp x8, x7
	b.eq #0xC
	ldr x12, [x26, #40]
	b #0x8
	ldr x11, [x7, #16]
