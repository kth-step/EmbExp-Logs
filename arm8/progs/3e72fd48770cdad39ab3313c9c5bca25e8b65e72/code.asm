	ldr x15, [x13,x5]
	ldr x19, [x16, #85]
	cmp x13, x19
	b.eq #0xC
	ldr x28, [x15, #74]
	b #0x8
	ldr x13, [x4, #8]
