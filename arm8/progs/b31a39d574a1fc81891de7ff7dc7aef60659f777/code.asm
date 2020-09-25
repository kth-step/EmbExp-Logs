	ldr x17, [x22,x7]
	ldr x20, [x4, #0]
	cmp x22, x20
	b.eq #0xC
	ldr x22, [x17, #173]
	b #0x8
	ldr x2, [x27, #16]
