	ldr x27, [x15,x5]
	ldr x3, [x18, #0]
	cmp x15, x3
	b.eq #0xC
	ldr x15, [x27, #154]
	b #0x8
	ldr x0, [x25, #4]
