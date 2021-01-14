	ldr x25, [x6,x9]
	ldr x7, [x13, #100]
	cmp x6, x7
	b.eq #0xC
	ldr x20, [x25, #158]
	b #0x8
	ldr x7, [x20, #4]
