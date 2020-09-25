	ldr x18, [x4,x7]
	ldr x6, [x24, #0]
	cmp x4, x6
	b.eq #0xC
	ldr x9, [x18, #91]
	b #0x8
	ldr x20, [x19]
