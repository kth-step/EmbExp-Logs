	ldr x26, [x14,x9]
	ldr x21, [x6, #0]
	cmp x14, x21
	b.eq #0xC
	ldr x27, [x26, #161]
	b #0x8
	ldr x10, [x13, #16]
