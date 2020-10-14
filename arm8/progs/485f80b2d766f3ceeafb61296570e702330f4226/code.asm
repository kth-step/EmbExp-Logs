	ldr x17, [x27,x18]
	ldr x29, [x21, #0]
	cmp x27, x29
	b.eq #0xC
	ldr x19, [x17, #72]
	b #0x8
	ldr x2, [x8, #4]
