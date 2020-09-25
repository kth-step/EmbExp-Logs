	ldr x14, [x24,x21]
	ldr x12, [x14, #0]
	cmp x24, x12
	b.eq #0xC
	ldr x26, [x14, #35]
	b #0x8
	ldr x4, [x27, #4]
