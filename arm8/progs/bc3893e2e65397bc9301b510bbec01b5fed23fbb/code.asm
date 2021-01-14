	ldr x4, [x28,x0]
	ldr x27, [x28, #70]
	cmp x28, x27
	b.eq #0xC
	ldr x23, [x4, #208]
	b #0x8
	ldr x18, [x27, #4]
