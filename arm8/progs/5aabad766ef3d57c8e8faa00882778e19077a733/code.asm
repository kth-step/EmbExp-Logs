	ldr x13, [x26,x12]
	ldr x15, [x18, #9]
	cmp x26, x15
	b.eq #0xC
	ldr x20, [x13, #248]
	b #0x8
	ldr x29, [x5, #16]
