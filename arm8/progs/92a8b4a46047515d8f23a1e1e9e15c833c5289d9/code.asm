	ldr x4, [x27,x0]
	ldr x18, [x21, #34]
	cmp x27, x18
	b.eq #0xC
	ldr x21, [x4, #239]
	b #0x8
	ldr x21, [x27, #8]
