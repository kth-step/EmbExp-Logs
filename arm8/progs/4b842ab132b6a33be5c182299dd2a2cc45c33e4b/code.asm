	ldr x13, [x27,x0]
	ldr x8, [x22, #210]
	cmp x27, x8
	b.eq #0xC
	ldr x20, [x13, #91]
	b #0x8
	ldr x6, [x27]
