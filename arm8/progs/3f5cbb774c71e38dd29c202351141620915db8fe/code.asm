	ldr x22, [x3,x6]
	ldr x27, [x19, #0]
	cmp x3, x27
	b.eq #0xC
	ldr x4, [x22, #123]
	b #0x8
	ldr x10, [x3]
