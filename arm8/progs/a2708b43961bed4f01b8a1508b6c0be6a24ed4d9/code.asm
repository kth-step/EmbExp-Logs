	ldr x23, [x11,x24]
	ldr x12, [x15, #0]
	cmp x11, x12
	b.eq #0xC
	ldr x6, [x23, #60]
	b #0x8
	ldr x5, [x9, #16]
