	ldr x25, [x11,x12]
	ldr x20, [x15, #0]
	cmp x11, x20
	b.eq #0xC
	ldr x3, [x25, #124]
	b #0x8
	ldr x0, [x23]
