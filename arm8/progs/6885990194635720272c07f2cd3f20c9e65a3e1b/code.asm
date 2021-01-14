	ldr x28, [x0,x12]
	ldr x17, [x27, #173]
	cmp x0, x17
	b.eq #0xC
	ldr x27, [x28, #32]
	b #0x8
	ldr x8, [x9]
