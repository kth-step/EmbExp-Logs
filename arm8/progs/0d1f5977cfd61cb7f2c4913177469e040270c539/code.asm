	ldr x28, [x27,x14]
	ldr x5, [x22, #0]
	cmp x27, x5
	b.eq #0xC
	ldr x0, [x28, #138]
	b #0x8
	ldr x6, [x7, #4]
