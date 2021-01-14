	ldr x29, [x12,x15]
	ldr x18, [x23, #76]
	cmp x12, x18
	b.eq #0xC
	ldr x23, [x29, #141]
	b #0x8
	ldr x14, [x23, #8]
