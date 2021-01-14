	ldr x14, [x1,x23]
	ldr x20, [x3, #163]
	cmp x1, x20
	b.eq #0xC
	ldr x22, [x14, #242]
	b #0x8
	ldr x4, [x17, #4]
