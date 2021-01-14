	ldr x12, [x25,x16]
	ldr x2, [x11, #221]
	cmp x25, x2
	b.eq #0xC
	ldr x19, [x12, #165]
	b #0x8
	ldr x7, [x20, #4]
