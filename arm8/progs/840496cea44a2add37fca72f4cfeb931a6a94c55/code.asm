	ldr x21, [x6,x5]
	ldr x27, [x8, #0]
	cmp x6, x27
	b.eq #0xC
	ldr x10, [x21, #23]
	b #0x8
	ldr x29, [x26]
