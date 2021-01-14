	ldr x3, [x19,x29]
	ldr x27, [x17, #150]
	cmp x19, x27
	b.eq #0xC
	ldr x20, [x3, #226]
	b #0x8
	ldr x28, [x0, #8]
