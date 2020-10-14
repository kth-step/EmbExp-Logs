	ldr x22, [x17,x8]
	ldr x27, [x29, #0]
	cmp x17, x27
	b.eq #0xC
	ldr x2, [x22, #37]
	b #0x8
	ldr x2, [x17, #8]
