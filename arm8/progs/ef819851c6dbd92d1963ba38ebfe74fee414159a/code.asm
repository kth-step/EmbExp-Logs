	ldr x28, [x12,x22]
	ldr x11, [x1, #0]
	cmp x12, x11
	b.eq #0xC
	ldr x22, [x28, #101]
	b #0x8
	ldr x8, [x2, #8]
