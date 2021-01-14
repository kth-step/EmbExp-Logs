	ldr x13, [x21,x4]
	ldr x7, [x2, #39]
	cmp x21, x7
	b.eq #0xC
	ldr x1, [x13, #171]
	b #0x8
	ldr x16, [x14, #4]
