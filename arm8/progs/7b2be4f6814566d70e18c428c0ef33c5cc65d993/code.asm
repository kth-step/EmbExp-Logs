	ldr x13, [x22,x26]
	ldr x6, [x16, #8]
	cmp x22, x6
	b.eq #0xC
	ldr x1, [x13, #160]
	b #0x8
	ldr x28, [x24]
