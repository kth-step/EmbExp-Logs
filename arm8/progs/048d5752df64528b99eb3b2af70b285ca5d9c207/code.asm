	ldr x12, [x13,x22]
	ldr x27, [x17, #202]
	cmp x13, x27
	b.eq #0xC
	ldr x22, [x12, #78]
	b #0x8
	ldr x1, [x8, #8]
