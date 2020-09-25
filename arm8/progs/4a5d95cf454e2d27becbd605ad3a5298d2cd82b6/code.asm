	ldr x3, [x4,x21]
	ldr x1, [x6, #0]
	cmp x4, x1
	b.eq #0xC
	ldr x27, [x3, #203]
	b #0x8
	ldr x14, [x28, #4]
