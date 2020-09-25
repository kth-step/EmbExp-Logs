	ldr x19, [x25,x14]
	ldr x21, [x24, #0]
	cmp x25, x21
	b.eq #0xC
	ldr x22, [x19, #32]
	b #0x8
	ldr x8, [x9, #8]
