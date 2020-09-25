	ldr x10, [x7,x26]
	ldr x1, [x4, #0]
	cmp x7, x1
	b.eq #0xC
	ldr x24, [x10, #121]
	b #0x8
	ldr x22, [x5]
