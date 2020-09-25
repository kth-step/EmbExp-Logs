	ldr x14, [x4,x29]
	ldr x27, [x15, #0]
	cmp x4, x27
	b.eq #0xC
	ldr x16, [x14, #57]
	b #0x8
	ldr x3, [x20, #16]
