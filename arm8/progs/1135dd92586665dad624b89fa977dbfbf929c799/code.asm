	ldr x27, [x29,x25]
	ldr x24, [x18, #0]
	cmp x29, x24
	b.eq #0xC
	ldr x5, [x27, #96]
	b #0x8
	ldr x6, [x22, #16]
