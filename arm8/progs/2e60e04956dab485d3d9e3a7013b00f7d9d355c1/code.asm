	ldr x29, [x5,x10]
	ldr x2, [x0, #173]
	cmp x5, x2
	b.eq #0xC
	ldr x19, [x29, #83]
	b #0x8
	ldr x2, [x6, #8]
