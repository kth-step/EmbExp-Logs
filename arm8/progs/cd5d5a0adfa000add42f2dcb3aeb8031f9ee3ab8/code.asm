	ldr x4, [x27,x18]
	ldr x2, [x16, #0]
	cmp x27, x2
	b.eq #0xC
	ldr x11, [x4, #170]
	b #0x8
	ldr x19, [x25, #16]
