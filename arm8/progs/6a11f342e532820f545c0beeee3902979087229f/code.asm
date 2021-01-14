	ldr x10, [x9,x5]
	ldr x4, [x0, #72]
	cmp x9, x4
	b.eq #0xC
	ldr x28, [x10, #50]
	b #0x8
	ldr x29, [x18]
