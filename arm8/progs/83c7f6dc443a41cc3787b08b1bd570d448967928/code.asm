	ldr x4, [x9,x21]
	ldr x27, [x21, #121]
	cmp x9, x27
	b.eq #0xC
	ldr x18, [x4, #2]
	b #0x8
	ldr x28, [x28, #8]
