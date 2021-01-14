	ldr x24, [x11,x29]
	ldr x19, [x17, #169]
	cmp x11, x19
	b.eq #0xC
	ldr x4, [x24, #157]
	b #0x8
	ldr x17, [x26, #8]
