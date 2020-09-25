	ldr x26, [x14,x29]
	ldr x19, [x5, #0]
	cmp x14, x19
	b.eq #0xC
	ldr x4, [x26, #71]
	b #0x8
	ldr x28, [x28]
