	ldr x19, [x11,x3]
	ldr x24, [x16, #65]
	cmp x11, x24
	b.eq #0xC
	ldr x27, [x19, #94]
	b #0x8
	ldr x26, [x16, #4]
