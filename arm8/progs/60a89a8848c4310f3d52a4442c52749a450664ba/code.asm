	ldr x25, [x24,x15]
	ldr x21, [x13, #0]
	cmp x24, x21
	b.eq #0xC
	ldr x9, [x25, #226]
	b #0x8
	ldr x24, [x16, #16]
