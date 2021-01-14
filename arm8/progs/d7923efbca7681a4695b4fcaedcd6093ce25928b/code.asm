	ldr x13, [x19,x20]
	ldr x29, [x24, #231]
	cmp x19, x29
	b.eq #0xC
	ldr x8, [x13, #192]
	b #0x8
	ldr x29, [x10, #4]
