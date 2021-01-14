	ldr x20, [x21,x7]
	ldr x8, [x22, #104]
	cmp x21, x8
	b.eq #0xC
	ldr x12, [x20, #90]
	b #0x8
	ldr x16, [x16, #8]
