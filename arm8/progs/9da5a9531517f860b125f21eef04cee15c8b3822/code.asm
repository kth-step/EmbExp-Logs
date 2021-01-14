	ldr x16, [x24,x13]
	ldr x9, [x6, #23]
	cmp x24, x9
	b.eq #0xC
	ldr x15, [x16, #126]
	b #0x8
	ldr x0, [x21]
