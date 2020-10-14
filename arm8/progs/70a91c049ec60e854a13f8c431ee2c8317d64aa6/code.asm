	ldr x22, [x27,x2]
	ldr x11, [x29, #0]
	cmp x27, x11
	b.eq #0xC
	ldr x24, [x22, #99]
	b #0x8
	ldr x17, [x11]
