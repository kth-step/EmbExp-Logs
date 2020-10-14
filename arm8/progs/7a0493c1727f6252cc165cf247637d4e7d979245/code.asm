	ldr x10, [x9,x3]
	ldr x26, [x27, #0]
	cmp x9, x26
	b.eq #0xC
	ldr x11, [x10, #254]
	b #0x8
	ldr x0, [x5]
