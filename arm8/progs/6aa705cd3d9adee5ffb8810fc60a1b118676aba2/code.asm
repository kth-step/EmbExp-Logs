	ldr x9, [x0,x17]
	ldr x22, [x15, #181]
	cmp x0, x22
	b.eq #0xC
	ldr x11, [x9, #47]
	b #0x8
	ldr x22, [x15, #16]
