	ldr x23, [x12,x3]
	ldr x18, [x4, #0]
	cmp x12, x18
	b.eq #0xC
	ldr x8, [x23, #97]
	b #0x8
	ldr x29, [x29, #16]
