	ldr x23, [x4,x10]
	ldr x12, [x18, #0]
	cmp x4, x12
	b.eq #0xC
	ldr x9, [x23, #168]
	b #0x8
	ldr x23, [x17, #8]
