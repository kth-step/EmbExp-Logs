	ldr x9, [x6,x22]
	ldr x22, [x27, #0]
	cmp x6, x22
	b.eq #0xC
	ldr x18, [x9, #133]
	b #0x8
	ldr x3, [x13, #8]
