	ldr x27, [x6,x26]
	ldr x2, [x8, #0]
	cmp x6, x2
	b.eq #0xC
	ldr x26, [x27, #55]
	b #0x8
	ldr x20, [x24, #8]
