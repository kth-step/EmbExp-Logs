	ldr x27, [x24,x15]
	ldr x25, [x17, #0]
	cmp x24, x25
	b.eq #0xC
	ldr x15, [x27, #114]
	b #0x8
	ldr x17, [x1, #4]
