	ldr x15, [x29,x7]
	ldr x12, [x26, #0]
	cmp x29, x12
	b.eq #0xC
	ldr x8, [x15, #163]
	b #0x8
	ldr x5, [x9, #16]
