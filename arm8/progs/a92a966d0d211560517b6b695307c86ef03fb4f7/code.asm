	ldr x5, [x26,x9]
	ldr x26, [x24, #5]
	cmp x26, x26
	b.eq #0xC
	ldr x7, [x5, #72]
	b #0x8
	ldr x18, [x22, #8]
