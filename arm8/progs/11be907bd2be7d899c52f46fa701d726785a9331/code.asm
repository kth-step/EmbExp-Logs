	ldr x6, [x1,x15]
	ldr x18, [x28, #101]
	cmp x1, x18
	b.eq #0xC
	ldr x7, [x6, #60]
	b #0x8
	ldr x22, [x15, #16]
