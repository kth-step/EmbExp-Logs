	ldr x8, [x12,x6]
	ldr x6, [x4, #0]
	cmp x12, x6
	b.eq #0xC
	ldr x20, [x8, #225]
	b #0x8
	ldr x17, [x24, #4]
