	ldr x9, [x22,x12]
	ldr x22, [x21, #0]
	cmp x22, x22
	b.eq #0xC
	ldr x13, [x9, #105]
	b #0x8
	ldr x9, [x9, #4]
