	ldr x9, [x16,x8]
	ldr x16, [x12, #0]
	cmp x16, x16
	b.eq #0xC
	ldr x4, [x9, #173]
	b #0x8
	ldr x22, [x17, #16]
