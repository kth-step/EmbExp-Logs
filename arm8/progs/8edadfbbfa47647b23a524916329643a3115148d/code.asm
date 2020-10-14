	ldr x8, [x27,x27]
	ldr x2, [x23, #0]
	cmp x27, x2
	b.eq #0xC
	ldr x17, [x8, #57]
	b #0x8
	ldr x10, [x6, #4]
