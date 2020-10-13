	ldr x26, [x4,x22]
	ldr x25, [x17, #0]
	cmp x4, x25
	b.eq #0xC
	ldr x27, [x26, #13]
	b #0x8
	ldr x4, [x20, #4]
