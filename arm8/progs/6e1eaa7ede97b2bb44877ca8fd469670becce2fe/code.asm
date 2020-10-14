	ldr x28, [x14,x22]
	ldr x1, [x20, #0]
	cmp x14, x1
	b.eq #0xC
	ldr x8, [x28, #5]
	b #0x8
	ldr x15, [x12]
