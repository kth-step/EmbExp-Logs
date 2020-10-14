	ldr x2, [x14,x26]
	ldr x24, [x12, #0]
	cmp x14, x24
	b.eq #0xC
	ldr x24, [x2, #99]
	b #0x8
	ldr x24, [x25, #8]
