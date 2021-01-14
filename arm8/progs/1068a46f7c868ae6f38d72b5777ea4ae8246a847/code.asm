	ldr x19, [x28,x3]
	ldr x11, [x8, #50]
	cmp x28, x11
	b.eq #0xC
	ldr x6, [x19, #187]
	b #0x8
	ldr x14, [x2]
