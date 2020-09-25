	ldr x7, [x13,x19]
	ldr x13, [x24, #0]
	cmp x13, x13
	b.eq #0xC
	ldr x22, [x7, #157]
	b #0x8
	ldr x3, [x29, #4]
