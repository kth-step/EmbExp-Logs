	ldr x18, [x28,x27]
	ldr x23, [x19, #96]
	cmp x28, x23
	b.eq #0xC
	ldr x16, [x18, #223]
	b #0x8
	ldr x7, [x19, #8]
