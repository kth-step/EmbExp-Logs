	ldr x26, [x2,x9]
	ldr x3, [x19, #93]
	cmp x2, x3
	b.eq #0xC
	ldr x16, [x26, #171]
	b #0x8
	ldr x10, [x21, #4]
