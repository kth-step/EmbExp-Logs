	ldr x14, [x24,x19]
	ldr x10, [x15, #223]
	cmp x24, x10
	b.eq #0xC
	ldr x15, [x14, #37]
	b #0x8
	ldr x14, [x15]
