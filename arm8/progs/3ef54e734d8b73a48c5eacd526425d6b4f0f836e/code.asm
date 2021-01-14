	ldr x2, [x18,x14]
	ldr x9, [x26, #36]
	cmp x18, x9
	b.eq #0xC
	ldr x29, [x2, #113]
	b #0x8
	ldr x25, [x3, #4]
