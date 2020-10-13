	ldr x27, [x0,x8]
	ldr x26, [x27, #0]
	cmp x0, x26
	b.eq #0xC
	ldr x8, [x27, #1]
	b #0x8
	ldr x27, [x4]
