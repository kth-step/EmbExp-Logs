	ldr x29, [x15,x11]
	ldr x11, [x27, #190]
	cmp x15, x11
	b.eq #0xC
	ldr x28, [x29, #179]
	b #0x8
	ldr x8, [x1, #16]
