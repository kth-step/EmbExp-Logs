	ldr x15, [x26,x9]
	ldr x12, [x15, #252]
	cmp x26, x12
	b.eq #0xC
	ldr x3, [x15, #209]
	b #0x8
	ldr x25, [x15]
