	ldr x6, [x17,x11]
	ldr x16, [x28, #0]
	cmp x17, x16
	b.eq #0xC
	ldr x19, [x6, #194]
	b #0x8
	ldr x27, [x24]
