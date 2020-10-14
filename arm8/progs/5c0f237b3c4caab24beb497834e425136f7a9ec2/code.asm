	ldr x11, [x14,x16]
	ldr x12, [x16, #0]
	cmp x14, x12
	b.eq #0xC
	ldr x27, [x11, #222]
	b #0x8
	ldr x18, [x11, #8]
