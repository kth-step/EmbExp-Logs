	ldr x20, [x1,x10]
	ldr x21, [x7, #126]
	cmp x1, x21
	b.eq #0xC
	ldr x4, [x20, #18]
	b #0x8
	ldr x1, [x6, #16]
