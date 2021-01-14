	ldr x7, [x13,x15]
	ldr x4, [x27, #39]
	cmp x13, x4
	b.eq #0xC
	ldr x0, [x7, #239]
	b #0x8
	ldr x25, [x6, #4]
