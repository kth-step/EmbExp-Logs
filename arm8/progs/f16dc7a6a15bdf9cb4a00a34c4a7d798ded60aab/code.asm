	ldr x6, [x13,x21]
	ldr x10, [x8, #0]
	cmp x13, x10
	b.eq #0xC
	ldr x24, [x6, #171]
	b #0x8
	ldr x8, [x2, #16]
