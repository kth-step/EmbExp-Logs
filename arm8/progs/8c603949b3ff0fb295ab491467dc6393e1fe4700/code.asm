	ldr x27, [x12,x25]
	ldr x14, [x19, #0]
	cmp x12, x14
	b.eq #0xC
	ldr x20, [x27, #219]
	b #0x8
	ldr x17, [x2, #4]
