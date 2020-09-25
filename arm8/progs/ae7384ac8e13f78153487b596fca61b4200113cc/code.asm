	ldr x8, [x13,x11]
	ldr x0, [x6, #0]
	cmp x13, x0
	b.eq #0xC
	ldr x19, [x8, #115]
	b #0x8
	ldr x19, [x27]
