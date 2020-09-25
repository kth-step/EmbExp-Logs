	ldr x24, [x15,x4]
	ldr x1, [x3, #0]
	cmp x15, x1
	b.eq #0xC
	ldr x22, [x24, #160]
	b #0x8
	ldr x14, [x28, #16]
