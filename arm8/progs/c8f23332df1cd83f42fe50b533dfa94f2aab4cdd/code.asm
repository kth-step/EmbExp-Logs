	ldr x4, [x0,x28]
	ldr x27, [x8, #0]
	cmp x0, x27
	b.eq #0xC
	ldr x23, [x4, #105]
	b #0x8
	ldr x10, [x10]
