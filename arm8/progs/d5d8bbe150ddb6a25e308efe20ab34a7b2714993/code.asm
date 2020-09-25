	ldr x9, [x21,x22]
	ldr x6, [x0, #0]
	cmp x21, x6
	b.eq #0xC
	ldr x4, [x9, #55]
	b #0x8
	ldr x10, [x1]
