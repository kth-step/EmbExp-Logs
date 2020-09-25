	ldr x27, [x8,x14]
	ldr x1, [x4, #0]
	cmp x8, x1
	b.eq #0xC
	ldr x24, [x27, #104]
	b #0x8
	ldr x8, [x4, #8]
