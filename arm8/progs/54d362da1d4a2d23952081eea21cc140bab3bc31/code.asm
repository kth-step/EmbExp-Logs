	ldr x8, [x15,x22]
	ldr x27, [x29, #138]
	cmp x15, x27
	b.eq #0xC
	ldr x6, [x8, #185]
	b #0x8
	ldr x15, [x5, #16]
