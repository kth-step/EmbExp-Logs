	ldr x24, [x21,x7]
	ldr x27, [x20, #0]
	cmp x21, x27
	b.eq #0xC
	ldr x7, [x24, #186]
	b #0x8
	ldr x5, [x8, #16]
