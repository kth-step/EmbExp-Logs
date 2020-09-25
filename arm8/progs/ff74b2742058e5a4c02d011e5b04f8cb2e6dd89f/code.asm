	ldr x21, [x23,x27]
	ldr x15, [x10, #0]
	cmp x23, x15
	b.eq #0xC
	ldr x27, [x21, #156]
	b #0x8
	ldr x4, [x4]
