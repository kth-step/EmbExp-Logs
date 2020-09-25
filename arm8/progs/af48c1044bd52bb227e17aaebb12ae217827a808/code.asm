	ldr x9, [x15,x0]
	ldr x7, [x18, #0]
	cmp x15, x7
	b.eq #0xC
	ldr x27, [x9, #110]
	b #0x8
	ldr x22, [x19, #8]
