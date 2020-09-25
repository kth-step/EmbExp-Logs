	ldr x23, [x2,x26]
	ldr x21, [x3, #0]
	cmp x2, x21
	b.eq #0xC
	ldr x24, [x23, #77]
	b #0x8
	ldr x10, [x18]
