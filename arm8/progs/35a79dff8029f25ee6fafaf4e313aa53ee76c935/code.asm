	ldr x27, [x28,x29]
	ldr x17, [x3, #75]
	cmp x28, x17
	b.eq #0xC
	ldr x22, [x27, #212]
	b #0x8
	ldr x12, [x14, #4]
