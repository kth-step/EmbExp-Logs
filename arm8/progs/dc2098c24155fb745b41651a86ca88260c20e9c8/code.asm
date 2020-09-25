	ldr x9, [x22,x17]
	ldr x6, [x20, #0]
	cmp x22, x6
	b.eq #0xC
	ldr x19, [x9, #209]
	b #0x8
	ldr x1, [x5, #8]
