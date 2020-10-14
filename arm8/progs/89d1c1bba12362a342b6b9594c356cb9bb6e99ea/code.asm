	ldr x11, [x17,x14]
	ldr x21, [x19, #0]
	cmp x17, x21
	b.eq #0xC
	ldr x12, [x11, #131]
	b #0x8
	ldr x22, [x2, #16]
