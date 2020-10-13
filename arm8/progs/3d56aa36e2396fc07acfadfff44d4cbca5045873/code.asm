	ldr x27, [x6,x11]
	ldr x12, [x19, #0]
	cmp x6, x12
	b.eq #0xC
	ldr x0, [x27, #248]
	b #0x8
	ldr x17, [x26, #8]
