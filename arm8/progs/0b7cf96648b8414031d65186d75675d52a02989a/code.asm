	ldr x15, [x5,x2]
	ldr x24, [x1, #0]
	cmp x5, x24
	b.eq #0xC
	ldr x29, [x15, #102]
	b #0x8
	ldr x28, [x12]
