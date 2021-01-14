	ldr x9, [x5,x19]
	ldr x0, [x1, #186]
	cmp x5, x0
	b.eq #0xC
	ldr x17, [x9, #54]
	b #0x8
	ldr x27, [x17]
