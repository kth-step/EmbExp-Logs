	ldr x24, [x3,x6]
	ldr x21, [x25, #0]
	cmp x3, x21
	b.eq #0xC
	ldr x28, [x24, #111]
	b #0x8
	ldr x6, [x19]
