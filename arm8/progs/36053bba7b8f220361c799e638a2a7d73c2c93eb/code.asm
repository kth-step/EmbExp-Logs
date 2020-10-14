	ldr x17, [x29,x19]
	ldr x2, [x13, #0]
	cmp x29, x2
	b.eq #0xC
	ldr x18, [x17, #222]
	b #0x8
	ldr x9, [x11]
