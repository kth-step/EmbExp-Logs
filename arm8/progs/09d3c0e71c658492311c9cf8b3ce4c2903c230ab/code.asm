	ldr x28, [x25,x3]
	ldr x0, [x28, #0]
	cmp x25, x0
	b.eq #0xC
	ldr x3, [x28, #207]
	b #0x8
	ldr x5, [x10]
