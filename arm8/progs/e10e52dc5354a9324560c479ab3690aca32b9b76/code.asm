	ldr x5, [x14,x0]
	ldr x24, [x16, #0]
	cmp x14, x24
	b.eq #0xC
	ldr x0, [x5, #10]
	b #0x8
	ldr x28, [x14, #16]
