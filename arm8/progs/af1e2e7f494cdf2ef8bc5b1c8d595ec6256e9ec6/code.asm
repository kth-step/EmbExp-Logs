	ldr x2, [x16,x8]
	ldr x27, [x0, #0]
	cmp x16, x27
	b.eq #0xC
	ldr x0, [x2, #242]
	b #0x8
	ldr x12, [x2, #16]
