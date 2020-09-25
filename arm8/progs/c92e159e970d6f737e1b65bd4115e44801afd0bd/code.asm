	ldr x13, [x12,x6]
	ldr x28, [x29, #0]
	cmp x12, x28
	b.eq #0xC
	ldr x24, [x13, #108]
	b #0x8
	ldr x14, [x21, #4]
