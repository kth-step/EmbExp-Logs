	ldr x16, [x2,x13]
	ldr x29, [x21, #111]
	cmp x2, x29
	b.eq #0xC
	ldr x23, [x16, #114]
	b #0x8
	ldr x14, [x13]
