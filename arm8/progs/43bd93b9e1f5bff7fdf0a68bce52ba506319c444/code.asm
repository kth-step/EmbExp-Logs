	ldr x14, [x7,x24]
	ldr x28, [x21, #0]
	cmp x7, x28
	b.eq #0xC
	ldr x7, [x14, #50]
	b #0x8
	ldr x4, [x12]
