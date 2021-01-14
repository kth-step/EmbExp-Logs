	ldr x25, [x24,x1]
	ldr x29, [x22, #8]
	cmp x24, x29
	b.eq #0xC
	ldr x27, [x25, #27]
	b #0x8
	ldr x15, [x8, #4]
