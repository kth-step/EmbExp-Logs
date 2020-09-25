	ldr x21, [x22,x24]
	ldr x10, [x6, #0]
	cmp x22, x10
	b.eq #0xC
	ldr x28, [x21, #53]
	b #0x8
	ldr x26, [x2]
