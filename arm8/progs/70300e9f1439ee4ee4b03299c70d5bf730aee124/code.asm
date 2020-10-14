	ldr x21, [x1,x29]
	ldr x19, [x7, #0]
	cmp x1, x19
	b.eq #0xC
	ldr x12, [x21, #91]
	b #0x8
	ldr x24, [x3]
