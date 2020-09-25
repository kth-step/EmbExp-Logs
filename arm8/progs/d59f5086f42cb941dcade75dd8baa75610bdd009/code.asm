	ldr x22, [x10,x10]
	ldr x16, [x21, #0]
	cmp x10, x16
	b.eq #0xC
	ldr x21, [x22, #131]
	b #0x8
	ldr x7, [x5, #4]
