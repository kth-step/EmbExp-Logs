	ldr x20, [x1,x28]
	ldr x23, [x28, #215]
	cmp x1, x23
	b.eq #0xC
	ldr x3, [x20, #60]
	b #0x8
	ldr x20, [x14]
