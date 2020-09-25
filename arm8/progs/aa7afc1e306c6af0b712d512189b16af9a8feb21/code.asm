	ldr x20, [x23,x18]
	ldr x24, [x8, #0]
	cmp x23, x24
	b.eq #0xC
	ldr x14, [x20, #200]
	b #0x8
	ldr x24, [x29]
