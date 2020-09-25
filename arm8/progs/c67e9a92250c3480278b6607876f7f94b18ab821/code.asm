	ldr x24, [x8,x12]
	ldr x19, [x14, #0]
	cmp x8, x19
	b.eq #0xC
	ldr x28, [x24, #232]
	b #0x8
	ldr x7, [x12]
