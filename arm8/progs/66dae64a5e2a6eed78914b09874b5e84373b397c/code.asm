	ldr x20, [x1,x12]
	ldr x22, [x16, #0]
	cmp x1, x22
	b.eq #0xC
	ldr x5, [x20, #42]
	b #0x8
	ldr x8, [x5, #4]
