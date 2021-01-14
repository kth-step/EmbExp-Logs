	ldr x11, [x18,x16]
	ldr x25, [x12, #132]
	cmp x18, x25
	b.eq #0xC
	ldr x27, [x11, #146]
	b #0x8
	ldr x0, [x0]
