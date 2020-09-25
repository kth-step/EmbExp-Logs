	ldr x22, [x14,x19]
	ldr x18, [x14, #0]
	cmp x14, x18
	b.eq #0xC
	ldr x4, [x22, #18]
	b #0x8
	ldr x4, [x24, #16]
