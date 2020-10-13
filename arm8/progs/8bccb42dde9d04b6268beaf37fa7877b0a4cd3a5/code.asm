	ldr x3, [x25,x19]
	ldr x26, [x18, #0]
	cmp x25, x26
	b.eq #0xC
	ldr x26, [x3, #57]
	b #0x8
	ldr x16, [x22]
