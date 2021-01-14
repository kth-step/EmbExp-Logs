	ldr x22, [x7,x5]
	ldr x6, [x9, #68]
	cmp x7, x6
	b.eq #0xC
	ldr x14, [x22, #66]
	b #0x8
	ldr x2, [x14]
