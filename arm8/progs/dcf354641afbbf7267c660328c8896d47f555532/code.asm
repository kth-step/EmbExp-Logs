	ldr x5, [x16,x27]
	ldr x6, [x12, #0]
	cmp x16, x6
	b.eq #0xC
	ldr x18, [x5, #77]
	b #0x8
	ldr x1, [x26]
