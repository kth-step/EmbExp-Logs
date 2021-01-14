	ldr x23, [x19,x5]
	ldr x0, [x10, #169]
	cmp x19, x0
	b.eq #0xC
	ldr x24, [x23, #57]
	b #0x8
	ldr x6, [x29, #4]
