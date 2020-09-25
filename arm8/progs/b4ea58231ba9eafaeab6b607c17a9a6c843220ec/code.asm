	ldr x7, [x19,x23]
	ldr x29, [x20, #0]
	cmp x19, x29
	b.eq #0xC
	ldr x0, [x7, #131]
	b #0x8
	ldr x6, [x13, #4]
