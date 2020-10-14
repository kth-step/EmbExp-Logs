	ldr x24, [x13,x12]
	ldr x25, [x0, #0]
	cmp x13, x25
	b.eq #0xC
	ldr x0, [x24, #113]
	b #0x8
	ldr x11, [x5, #16]
