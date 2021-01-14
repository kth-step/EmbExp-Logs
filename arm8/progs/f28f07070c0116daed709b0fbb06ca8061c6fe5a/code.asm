	ldr x11, [x20,x22]
	ldr x0, [x27, #223]
	cmp x20, x0
	b.eq #0xC
	ldr x0, [x11, #219]
	b #0x8
	ldr x27, [x23]
