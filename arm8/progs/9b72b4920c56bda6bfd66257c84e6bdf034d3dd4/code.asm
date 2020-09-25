	ldr x28, [x6,x24]
	ldr x5, [x24, #0]
	cmp x6, x5
	b.eq #0xC
	ldr x23, [x28, #98]
	b #0x8
	ldr x19, [x29]
