	ldr x5, [x24,x12]
	ldr x16, [x6, #117]
	cmp x24, x16
	b.eq #0xC
	ldr x12, [x5, #97]
	b #0x8
	ldr x5, [x28, #8]
