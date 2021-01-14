	ldr x18, [x23,x2]
	ldr x12, [x13, #90]
	cmp x23, x12
	b.eq #0xC
	ldr x17, [x18, #164]
	b #0x8
	ldr x26, [x2]
