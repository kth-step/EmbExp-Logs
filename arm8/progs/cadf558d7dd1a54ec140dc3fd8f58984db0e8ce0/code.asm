	ldr x16, [x24,x20]
	ldr x7, [x26, #0]
	cmp x24, x7
	b.eq #0xC
	ldr x1, [x16, #241]
	b #0x8
	ldr x19, [x9]
