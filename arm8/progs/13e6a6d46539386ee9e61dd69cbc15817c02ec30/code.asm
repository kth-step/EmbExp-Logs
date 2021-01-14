	ldr x26, [x0,x7]
	ldr x21, [x9, #153]
	cmp x0, x21
	b.eq #0xC
	ldr x7, [x26, #216]
	b #0x8
	ldr x13, [x27, #4]
