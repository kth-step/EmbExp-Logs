	ldr x14, [x28,x27]
	ldr x8, [x29, #0]
	cmp x28, x8
	b.eq #0xC
	ldr x28, [x14, #187]
	b #0x8
	ldr x10, [x18, #4]
