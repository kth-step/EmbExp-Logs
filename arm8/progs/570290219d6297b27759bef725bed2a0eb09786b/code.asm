	ldr x17, [x27,x26]
	ldr x28, [x22, #0]
	cmp x27, x28
	b.eq #0xC
	ldr x8, [x17, #137]
	b #0x8
	ldr x15, [x28, #8]
