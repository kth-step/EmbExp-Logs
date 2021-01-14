	ldr x22, [x5,x28]
	ldr x20, [x28, #216]
	cmp x5, x20
	b.eq #0xC
	ldr x18, [x22, #96]
	b #0x8
	ldr x2, [x29, #8]
