	ldr x8, [x4,x23]
	ldr x19, [x10, #0]
	cmp x4, x19
	b.eq #0xC
	ldr x6, [x8, #104]
	b #0x8
	ldr x1, [x23, #16]
