	ldr x20, [x9,x19]
	ldr x27, [x24, #139]
	cmp x9, x27
	b.eq #0xC
	ldr x0, [x20, #115]
	b #0x8
	ldr x14, [x4, #8]
