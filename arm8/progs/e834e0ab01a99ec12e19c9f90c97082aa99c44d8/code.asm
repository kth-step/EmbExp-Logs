	ldr x8, [x25,x6]
	ldr x0, [x11, #160]
	cmp x25, x0
	b.eq #0xC
	ldr x27, [x8, #19]
	b #0x8
	ldr x22, [x6]
