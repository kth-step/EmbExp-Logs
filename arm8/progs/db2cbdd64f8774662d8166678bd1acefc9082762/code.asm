	ldr x19, [x28,x9]
	ldr x9, [x3, #0]
	cmp x28, x9
	b.eq #0xC
	ldr x13, [x19, #124]
	b #0x8
	ldr x18, [x10]
