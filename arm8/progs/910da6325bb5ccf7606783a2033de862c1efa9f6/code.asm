	ldr x18, [x5,x4]
	ldr x17, [x18, #129]
	cmp x5, x17
	b.eq #0xC
	ldr x21, [x18, #139]
	b #0x8
	ldr x26, [x2]
