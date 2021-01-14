	ldr x18, [x6,x12]
	ldr x8, [x28, #167]
	cmp x6, x8
	b.eq #0xC
	ldr x8, [x18, #150]
	b #0x8
	ldr x27, [x0, #16]
