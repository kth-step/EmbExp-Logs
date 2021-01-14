	ldr x9, [x15,x3]
	ldr x16, [x18, #207]
	cmp x15, x16
	b.eq #0xC
	ldr x3, [x9, #223]
	b #0x8
	ldr x18, [x15, #8]
