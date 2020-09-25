	ldr x17, [x18,x18]
	ldr x25, [x20, #0]
	cmp x18, x25
	b.eq #0xC
	ldr x1, [x17, #22]
	b #0x8
	ldr x9, [x13, #16]
