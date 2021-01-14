	ldr x29, [x20,x2]
	ldr x3, [x28, #30]
	cmp x20, x3
	b.eq #0xC
	ldr x25, [x29, #96]
	b #0x8
	ldr x3, [x2]
