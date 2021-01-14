	ldr x5, [x4,x1]
	ldr x3, [x26, #121]
	cmp x4, x3
	b.eq #0xC
	ldr x21, [x5, #97]
	b #0x8
	ldr x12, [x0]
