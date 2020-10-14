	ldr x6, [x22,x26]
	ldr x3, [x29, #0]
	cmp x22, x3
	b.eq #0xC
	ldr x10, [x6, #15]
	b #0x8
	ldr x22, [x6, #16]
