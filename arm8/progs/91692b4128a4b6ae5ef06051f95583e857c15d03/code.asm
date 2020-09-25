	ldr x16, [x21,x2]
	ldr x27, [x12, #0]
	cmp x21, x27
	b.eq #0xC
	ldr x24, [x16, #101]
	b #0x8
	ldr x4, [x8, #4]
