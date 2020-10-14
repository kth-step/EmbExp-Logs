	ldr x13, [x0,x21]
	ldr x3, [x15, #0]
	cmp x0, x3
	b.eq #0xC
	ldr x25, [x13, #131]
	b #0x8
	ldr x4, [x0, #4]
