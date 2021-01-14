	ldr x15, [x21,x1]
	ldr x17, [x3, #67]
	cmp x21, x17
	b.eq #0xC
	ldr x8, [x15, #131]
	b #0x8
	ldr x20, [x22]
