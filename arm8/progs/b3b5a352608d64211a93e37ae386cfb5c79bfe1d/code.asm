	ldr x28, [x10,x19]
	ldr x19, [x18, #0]
	cmp x10, x19
	b.eq #0xC
	ldr x24, [x28, #179]
	b #0x8
	ldr x10, [x26, #8]
