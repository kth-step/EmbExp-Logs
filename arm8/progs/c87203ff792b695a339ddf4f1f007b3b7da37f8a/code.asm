	ldr x27, [x13,x29]
	ldr x7, [x28, #0]
	cmp x13, x7
	b.eq #0xC
	ldr x18, [x27, #33]
	b #0x8
	ldr x11, [x13]
