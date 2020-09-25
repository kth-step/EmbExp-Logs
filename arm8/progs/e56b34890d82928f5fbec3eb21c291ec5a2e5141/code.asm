	ldr x22, [x24,x26]
	ldr x14, [x13, #0]
	cmp x24, x14
	b.eq #0xC
	ldr x16, [x22, #80]
	b #0x8
	ldr x21, [x15, #8]
