	ldr x10, [x26,x8]
	ldr x22, [x10, #0]
	cmp x26, x22
	b.eq #0xC
	ldr x24, [x10, #205]
	b #0x8
	ldr x6, [x1, #8]
