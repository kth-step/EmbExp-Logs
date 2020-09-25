	ldr x2, [x16,x19]
	ldr x27, [x3, #0]
	cmp x16, x27
	b.eq #0xC
	ldr x10, [x2, #96]
	b #0x8
	ldr x25, [x10]
