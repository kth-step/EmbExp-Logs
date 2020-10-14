	ldr x8, [x1,x20]
	ldr x9, [x13, #0]
	cmp x1, x9
	b.eq #0xC
	ldr x17, [x8, #181]
	b #0x8
	ldr x16, [x19, #16]
