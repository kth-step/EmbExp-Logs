	ldr x11, [x19,x29]
	ldr x12, [x15, #0]
	cmp x19, x12
	b.eq #0xC
	ldr x2, [x11, #85]
	b #0x8
	ldr x25, [x1, #16]
