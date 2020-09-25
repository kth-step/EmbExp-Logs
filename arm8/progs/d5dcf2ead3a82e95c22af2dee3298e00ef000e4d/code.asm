	ldr x28, [x12,x22]
	ldr x13, [x15, #0]
	cmp x12, x13
	b.eq #0xC
	ldr x21, [x28, #176]
	b #0x8
	ldr x4, [x3, #4]
