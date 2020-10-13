	ldr x28, [x22,x29]
	ldr x9, [x10, #0]
	cmp x22, x9
	b.eq #0xC
	ldr x10, [x28, #168]
	b #0x8
	ldr x13, [x23]
