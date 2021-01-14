	ldr x20, [x22,x9]
	ldr x14, [x13, #57]
	cmp x22, x14
	b.eq #0xC
	ldr x4, [x20, #227]
	b #0x8
	ldr x23, [x2, #8]
