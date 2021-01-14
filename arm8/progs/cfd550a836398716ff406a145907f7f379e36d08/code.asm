	ldr x28, [x22,x10]
	ldr x20, [x28, #16]
	cmp x22, x20
	b.eq #0xC
	ldr x13, [x28, #202]
	b #0x8
	ldr x4, [x12, #8]
