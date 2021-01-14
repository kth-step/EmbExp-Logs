	ldr x10, [x27,x16]
	ldr x9, [x21, #16]
	cmp x27, x9
	b.eq #0xC
	ldr x27, [x10, #137]
	b #0x8
	ldr x2, [x22, #16]
