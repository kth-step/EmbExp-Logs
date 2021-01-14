	ldr x8, [x24,x28]
	ldr x28, [x3, #169]
	cmp x24, x28
	b.eq #0xC
	ldr x6, [x8, #108]
	b #0x8
	ldr x5, [x19, #4]
