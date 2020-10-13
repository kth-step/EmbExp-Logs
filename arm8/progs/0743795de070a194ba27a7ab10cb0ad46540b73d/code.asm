	ldr x29, [x25,x3]
	ldr x28, [x18, #0]
	cmp x25, x28
	b.eq #0xC
	ldr x19, [x29, #204]
	b #0x8
	ldr x0, [x29]
