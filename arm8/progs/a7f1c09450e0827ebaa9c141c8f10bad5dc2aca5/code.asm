	ldr x24, [x4,x12]
	ldr x16, [x15, #0]
	cmp x4, x16
	b.eq #0xC
	ldr x13, [x24, #80]
	b #0x8
	ldr x16, [x10, #16]
