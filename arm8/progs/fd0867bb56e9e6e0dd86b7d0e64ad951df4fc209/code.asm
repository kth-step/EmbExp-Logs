	ldr x14, [x29,x5]
	ldr x10, [x15, #0]
	cmp x29, x10
	b.eq #0xC
	ldr x1, [x14, #200]
	b #0x8
	ldr x3, [x24]
