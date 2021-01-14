	ldr x15, [x27,x6]
	ldr x9, [x25, #137]
	cmp x27, x9
	b.eq #0xC
	ldr x4, [x15, #26]
	b #0x8
	ldr x22, [x8, #16]
