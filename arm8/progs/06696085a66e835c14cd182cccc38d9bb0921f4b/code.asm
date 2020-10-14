	ldr x20, [x7,x12]
	ldr x15, [x16, #0]
	cmp x7, x15
	b.eq #0xC
	ldr x26, [x20, #130]
	b #0x8
	ldr x22, [x22, #4]
