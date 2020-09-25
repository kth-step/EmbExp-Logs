	ldr x17, [x7,x22]
	ldr x12, [x15, #0]
	cmp x7, x12
	b.eq #0xC
	ldr x16, [x17, #18]
	b #0x8
	ldr x29, [x8, #16]
