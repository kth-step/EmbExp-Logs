	ldr x10, [x1,x14]
	ldr x24, [x8, #0]
	cmp x1, x24
	b.eq #0xC
	ldr x18, [x10, #57]
	b #0x8
	ldr x3, [x2]
