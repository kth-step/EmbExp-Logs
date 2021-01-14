	ldr x9, [x17,x11]
	ldr x0, [x6, #223]
	cmp x17, x0
	b.eq #0xC
	ldr x6, [x9, #196]
	b #0x8
	ldr x27, [x12]
