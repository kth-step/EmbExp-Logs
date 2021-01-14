	ldr x16, [x0,x20]
	ldr x25, [x6, #118]
	cmp x0, x25
	b.eq #0xC
	ldr x6, [x16, #107]
	b #0x8
	ldr x11, [x13]
