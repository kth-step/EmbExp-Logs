	ldr x8, [x9,x11]
	ldr x24, [x15, #77]
	cmp x9, x24
	b.eq #0xC
	ldr x10, [x8, #129]
	b #0x8
	ldr x19, [x24, #16]
