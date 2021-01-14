	ldr x21, [x23,x3]
	ldr x3, [x6, #226]
	cmp x23, x3
	b.eq #0xC
	ldr x17, [x21, #183]
	b #0x8
	ldr x13, [x13, #4]
