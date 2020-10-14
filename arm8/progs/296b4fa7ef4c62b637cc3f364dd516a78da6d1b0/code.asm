	ldr x9, [x19,x15]
	ldr x6, [x12, #0]
	cmp x19, x6
	b.eq #0xC
	ldr x6, [x9, #99]
	b #0x8
	ldr x19, [x4, #8]
