	ldr x25, [x5,x27]
	ldr x0, [x17, #0]
	cmp x5, x0
	b.eq #0xC
	ldr x3, [x25, #93]
	b #0x8
	ldr x28, [x3, #16]
