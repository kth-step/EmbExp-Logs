	ldr x18, [x2,x4]
	ldr x13, [x8, #0]
	cmp x2, x13
	b.eq #0xC
	ldr x13, [x18, #183]
	b #0x8
	ldr x26, [x8, #4]
