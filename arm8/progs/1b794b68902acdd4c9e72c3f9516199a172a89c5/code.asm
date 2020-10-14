	ldr x22, [x29,x25]
	ldr x7, [x3, #0]
	cmp x29, x7
	b.eq #0xC
	ldr x20, [x22, #152]
	b #0x8
	ldr x1, [x0]
