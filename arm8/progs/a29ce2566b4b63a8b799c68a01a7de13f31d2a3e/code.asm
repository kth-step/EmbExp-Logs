	ldr x15, [x2,x6]
	ldr x28, [x7, #74]
	cmp x2, x28
	b.eq #0xC
	ldr x22, [x15, #49]
	b #0x8
	ldr x12, [x7, #4]
