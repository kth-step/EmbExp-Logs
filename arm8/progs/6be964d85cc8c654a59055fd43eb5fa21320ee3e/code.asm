	ldr x7, [x27,x22]
	ldr x13, [x0, #46]
	cmp x27, x13
	b.eq #0xC
	ldr x23, [x7, #94]
	b #0x8
	ldr x11, [x9, #4]
