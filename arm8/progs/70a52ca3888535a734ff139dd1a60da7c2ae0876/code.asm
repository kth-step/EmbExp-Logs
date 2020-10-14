	ldr x18, [x6,x23]
	ldr x9, [x22, #0]
	cmp x6, x9
	b.eq #0xC
	ldr x6, [x18, #97]
	b #0x8
	ldr x5, [x18, #16]
