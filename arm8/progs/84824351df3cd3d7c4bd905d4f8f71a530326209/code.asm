	ldr x27, [x13,x1]
	ldr x28, [x27, #176]
	cmp x13, x28
	b.eq #0xC
	ldr x2, [x27, #157]
	b #0x8
	ldr x6, [x25, #8]
