	ldr x9, [x26,x23]
	ldr x5, [x12, #0]
	cmp x26, x5
	b.eq #0xC
	ldr x15, [x9, #74]
	b #0x8
	ldr x27, [x2, #4]
