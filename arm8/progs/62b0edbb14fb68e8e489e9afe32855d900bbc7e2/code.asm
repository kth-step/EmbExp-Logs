	ldr x6, [x29,x17]
	ldr x20, [x3, #0]
	cmp x29, x20
	b.eq #0xC
	ldr x22, [x6, #142]
	b #0x8
	ldr x10, [x26, #8]
