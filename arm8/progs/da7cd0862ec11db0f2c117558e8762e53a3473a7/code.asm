	ldr x4, [x14,x9]
	ldr x29, [x12, #39]
	cmp x14, x29
	b.eq #0xC
	ldr x26, [x4, #76]
	b #0x8
	ldr x28, [x27, #4]
