	ldr x24, [x27,x4]
	ldr x1, [x17, #0]
	cmp x27, x1
	b.eq #0xC
	ldr x15, [x24, #217]
	b #0x8
	ldr x6, [x22]
