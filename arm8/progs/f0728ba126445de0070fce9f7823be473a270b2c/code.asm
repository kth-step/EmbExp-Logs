	ldr x6, [x4,x1]
	ldr x1, [x22, #0]
	cmp x4, x1
	b.eq #0xC
	ldr x19, [x6, #217]
	b #0x8
	ldr x9, [x22, #8]
