	ldr x18, [x3,x20]
	ldr x9, [x24, #0]
	cmp x3, x9
	b.eq #0xC
	ldr x28, [x18, #148]
	b #0x8
	ldr x13, [x14]
