	ldr x14, [x12,x27]
	ldr x17, [x28, #0]
	cmp x12, x17
	b.eq #0xC
	ldr x18, [x14, #13]
	b #0x8
	ldr x3, [x7]
