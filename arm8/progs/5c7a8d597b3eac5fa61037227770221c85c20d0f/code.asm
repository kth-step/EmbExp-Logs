	ldr x9, [x7,x27]
	ldr x2, [x1, #0]
	cmp x7, x2
	b.eq #0xC
	ldr x11, [x9, #47]
	b #0x8
	ldr x11, [x18, #4]
