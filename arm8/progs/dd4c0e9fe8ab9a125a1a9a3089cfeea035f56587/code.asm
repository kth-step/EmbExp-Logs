	ldr x26, [x27,x22]
	ldr x9, [x11, #141]
	cmp x27, x9
	b.eq #0xC
	ldr x21, [x26, #254]
	b #0x8
	ldr x0, [x7, #16]
