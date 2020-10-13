	ldr x22, [x21,x23]
	ldr x24, [x28, #0]
	cmp x21, x24
	b.eq #0xC
	ldr x21, [x22, #232]
	b #0x8
	ldr x0, [x24, #4]
