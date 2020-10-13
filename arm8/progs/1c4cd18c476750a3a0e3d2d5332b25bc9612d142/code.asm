	ldr x19, [x2,x28]
	ldr x27, [x18, #0]
	cmp x2, x27
	b.eq #0xC
	ldr x3, [x19, #110]
	b #0x8
	ldr x5, [x4, #16]
