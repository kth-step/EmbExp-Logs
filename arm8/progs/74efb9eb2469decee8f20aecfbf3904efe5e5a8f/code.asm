	ldr x15, [x24,x21]
	ldr x9, [x29, #0]
	cmp x24, x9
	b.eq #0xC
	ldr x14, [x15, #154]
	b #0x8
	ldr x9, [x14]
