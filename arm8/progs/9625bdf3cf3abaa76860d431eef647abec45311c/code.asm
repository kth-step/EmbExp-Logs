	ldr x12, [x4,x27]
	ldr x17, [x1, #96]
	cmp x4, x17
	b.eq #0xC
	ldr x26, [x12, #139]
	b #0x8
	ldr x2, [x12]
