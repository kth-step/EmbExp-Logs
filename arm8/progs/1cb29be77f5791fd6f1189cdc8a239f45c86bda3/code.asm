	ldr x8, [x29,x11]
	ldr x6, [x5, #0]
	cmp x29, x6
	b.eq #0xC
	ldr x29, [x8, #203]
	b #0x8
	ldr x8, [x20, #4]
