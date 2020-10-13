	ldr x5, [x12,x20]
	ldr x20, [x22, #0]
	cmp x12, x20
	b.eq #0xC
	ldr x9, [x5, #136]
	b #0x8
	ldr x23, [x25]
