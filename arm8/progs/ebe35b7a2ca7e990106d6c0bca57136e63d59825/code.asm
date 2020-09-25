	ldr x10, [x3,x24]
	ldr x25, [x27, #0]
	cmp x3, x25
	b.eq #0xC
	ldr x29, [x10, #60]
	b #0x8
	ldr x6, [x23]
