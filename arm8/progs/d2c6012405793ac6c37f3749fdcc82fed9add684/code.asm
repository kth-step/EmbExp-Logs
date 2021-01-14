	ldr x26, [x22,x22]
	ldr x2, [x11, #102]
	cmp x22, x2
	b.eq #0xC
	ldr x12, [x26, #109]
	b #0x8
	ldr x14, [x0, #8]
