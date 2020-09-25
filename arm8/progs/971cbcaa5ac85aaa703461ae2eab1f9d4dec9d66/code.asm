	ldr x29, [x10,x25]
	ldr x15, [x27, #0]
	cmp x10, x15
	b.eq #0xC
	ldr x22, [x29, #78]
	b #0x8
	ldr x15, [x9]
