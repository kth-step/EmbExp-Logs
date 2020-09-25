	ldr x14, [x27,x5]
	ldr x6, [x3, #0]
	cmp x27, x6
	b.eq #0xC
	ldr x3, [x14, #131]
	b #0x8
	ldr x10, [x27, #8]
