	ldr x11, [x16,x17]
	ldr x8, [x12, #0]
	cmp x16, x8
	b.eq #0xC
	ldr x25, [x11, #170]
	b #0x8
	ldr x22, [x4, #4]
