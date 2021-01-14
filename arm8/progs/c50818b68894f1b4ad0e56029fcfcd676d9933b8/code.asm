	ldr x16, [x9,x1]
	ldr x2, [x26, #233]
	cmp x9, x2
	b.eq #0xC
	ldr x26, [x16, #137]
	b #0x8
	ldr x28, [x22, #16]
