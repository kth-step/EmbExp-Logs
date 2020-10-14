	ldr x18, [x25,x9]
	ldr x7, [x27, #0]
	cmp x25, x7
	b.eq #0xC
	ldr x17, [x18, #48]
	b #0x8
	ldr x22, [x29, #4]
