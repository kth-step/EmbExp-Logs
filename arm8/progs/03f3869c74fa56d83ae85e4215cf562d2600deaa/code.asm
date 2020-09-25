	ldr x2, [x20,x3]
	ldr x1, [x8, #0]
	cmp x20, x1
	b.eq #0xC
	ldr x17, [x2, #42]
	b #0x8
	ldr x22, [x4]
