	ldr x19, [x2,x28]
	ldr x13, [x0, #22]
	cmp x2, x13
	b.eq #0xC
	ldr x17, [x19, #65]
	b #0x8
	ldr x25, [x6, #4]
