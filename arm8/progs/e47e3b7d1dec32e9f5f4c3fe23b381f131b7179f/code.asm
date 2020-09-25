	ldr x17, [x12,x11]
	ldr x29, [x18, #0]
	cmp x12, x29
	b.eq #0xC
	ldr x25, [x17, #199]
	b #0x8
	ldr x27, [x21]
