	ldr x22, [x26,x12]
	ldr x11, [x0, #0]
	cmp x26, x11
	b.eq #0xC
	ldr x9, [x22, #135]
	b #0x8
	ldr x8, [x12, #4]
