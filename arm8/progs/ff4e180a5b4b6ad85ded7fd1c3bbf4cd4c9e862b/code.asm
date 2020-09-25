	ldr x28, [x26,x23]
	ldr x22, [x3, #0]
	cmp x26, x22
	b.eq #0xC
	ldr x7, [x28, #178]
	b #0x8
	ldr x27, [x10, #16]
