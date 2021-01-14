	ldr x3, [x13,x9]
	ldr x25, [x12, #32]
	cmp x13, x25
	b.eq #0xC
	ldr x22, [x3, #227]
	b #0x8
	ldr x27, [x24, #4]
