	ldr x4, [x1,x25]
	ldr x2, [x28, #152]
	cmp x1, x2
	b.eq #0xC
	ldr x23, [x4, #167]
	b #0x8
	ldr x29, [x27]
