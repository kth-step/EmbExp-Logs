	ldr x27, [x6,x4]
	ldr x22, [x13, #0]
	cmp x6, x22
	b.eq #0xC
	ldr x26, [x27, #130]
	b #0x8
	ldr x28, [x7, #4]
