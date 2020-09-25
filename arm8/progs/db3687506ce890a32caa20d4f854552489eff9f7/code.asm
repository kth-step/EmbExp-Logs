	ldr x23, [x18,x20]
	ldr x7, [x28, #0]
	cmp x18, x7
	b.eq #0xC
	ldr x16, [x23, #68]
	b #0x8
	ldr x0, [x20, #16]
