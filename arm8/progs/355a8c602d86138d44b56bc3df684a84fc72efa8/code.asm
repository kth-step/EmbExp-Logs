	ldr x9, [x12,x12]
	ldr x22, [x18, #0]
	cmp x12, x22
	b.eq #0xC
	ldr x20, [x9, #18]
	b #0x8
	ldr x15, [x6, #16]
