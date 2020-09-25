	ldr x27, [x4,x16]
	ldr x17, [x26, #0]
	cmp x4, x17
	b.eq #0xC
	ldr x1, [x27, #250]
	b #0x8
	ldr x18, [x20, #16]
