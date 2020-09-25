	ldr x3, [x6,x9]
	ldr x23, [x6, #0]
	cmp x6, x23
	b.eq #0xC
	ldr x0, [x3, #131]
	b #0x8
	ldr x25, [x10]
