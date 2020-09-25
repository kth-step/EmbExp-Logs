	ldr x12, [x14,x18]
	ldr x3, [x13, #0]
	cmp x14, x3
	b.eq #0xC
	ldr x10, [x12, #202]
	b #0x8
	ldr x10, [x22]
