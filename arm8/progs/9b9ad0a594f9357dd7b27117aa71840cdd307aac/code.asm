	ldr x12, [x24,x14]
	ldr x29, [x9, #57]
	cmp x24, x29
	b.eq #0xC
	ldr x29, [x12, #228]
	b #0x8
	ldr x1, [x24, #8]
