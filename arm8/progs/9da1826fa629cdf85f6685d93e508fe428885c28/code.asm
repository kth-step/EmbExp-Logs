	ldr x27, [x7,x22]
	ldr x12, [x17, #0]
	cmp x7, x12
	b.eq #0xC
	ldr x16, [x27, #195]
	b #0x8
	ldr x6, [x22]
