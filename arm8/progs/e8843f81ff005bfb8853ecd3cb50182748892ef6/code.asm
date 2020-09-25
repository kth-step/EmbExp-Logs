	ldr x27, [x24,x6]
	ldr x9, [x8, #0]
	cmp x24, x9
	b.eq #0xC
	ldr x17, [x27, #200]
	b #0x8
	ldr x20, [x13]
