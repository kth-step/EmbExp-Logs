	ldr x23, [x6,x12]
	ldr x3, [x27, #251]
	cmp x6, x3
	b.eq #0xC
	ldr x14, [x23, #202]
	b #0x8
	ldr x11, [x15, #4]
