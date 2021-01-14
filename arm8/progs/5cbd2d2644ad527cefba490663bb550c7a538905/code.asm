	ldr x27, [x19,x11]
	ldr x5, [x8, #165]
	cmp x19, x5
	b.eq #0xC
	ldr x23, [x27, #202]
	b #0x8
	ldr x22, [x25]
