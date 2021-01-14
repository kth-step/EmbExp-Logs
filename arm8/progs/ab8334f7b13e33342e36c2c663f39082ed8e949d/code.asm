	ldr x17, [x8,x14]
	ldr x9, [x6, #31]
	cmp x8, x9
	b.eq #0xC
	ldr x27, [x17, #55]
	b #0x8
	ldr x17, [x9, #16]
