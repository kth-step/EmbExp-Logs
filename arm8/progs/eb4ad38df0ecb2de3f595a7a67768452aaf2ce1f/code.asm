	ldr x13, [x14,x2]
	ldr x27, [x28, #74]
	cmp x14, x27
	b.eq #0xC
	ldr x8, [x13, #231]
	b #0x8
	ldr x3, [x4, #8]
