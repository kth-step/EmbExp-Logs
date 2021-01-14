	ldr x10, [x27,x25]
	ldr x5, [x12, #208]
	cmp x27, x5
	b.eq #0xC
	ldr x0, [x10, #167]
	b #0x8
	ldr x20, [x8, #16]
