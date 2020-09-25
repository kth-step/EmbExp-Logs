	ldr x23, [x29,x29]
	ldr x8, [x2, #0]
	cmp x29, x8
	b.eq #0xC
	ldr x25, [x23, #203]
	b #0x8
	ldr x23, [x16, #16]
