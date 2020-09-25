	ldr x20, [x1,x4]
	ldr x14, [x29, #0]
	cmp x1, x14
	b.eq #0xC
	ldr x1, [x20, #73]
	b #0x8
	ldr x7, [x27]
