	ldr x27, [x14,x16]
	ldr x21, [x22, #0]
	cmp x14, x21
	b.eq #0xC
	ldr x10, [x27, #84]
	b #0x8
	ldr x22, [x14, #16]
