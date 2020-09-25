	ldr x27, [x0,x1]
	ldr x1, [x28, #0]
	cmp x0, x1
	b.eq #0xC
	ldr x1, [x27, #116]
	b #0x8
	ldr x4, [x18]
