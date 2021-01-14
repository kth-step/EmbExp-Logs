	ldr x16, [x12,x27]
	ldr x8, [x19, #28]
	cmp x12, x8
	b.eq #0xC
	ldr x10, [x16, #36]
	b #0x8
	ldr x10, [x20, #4]
