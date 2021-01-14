	ldr x10, [x29,x1]
	ldr x8, [x26, #170]
	cmp x29, x8
	b.eq #0xC
	ldr x16, [x10, #13]
	b #0x8
	ldr x9, [x28, #16]
