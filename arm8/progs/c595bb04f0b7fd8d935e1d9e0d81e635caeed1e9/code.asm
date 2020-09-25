	ldr x2, [x27,x13]
	ldr x21, [x25, #0]
	cmp x27, x21
	b.eq #0xC
	ldr x14, [x2, #226]
	b #0x8
	ldr x4, [x22, #8]
