	ldr x21, [x2,x19]
	ldr x14, [x27, #0]
	cmp x2, x14
	b.eq #0xC
	ldr x15, [x21, #161]
	b #0x8
	ldr x21, [x24, #8]
