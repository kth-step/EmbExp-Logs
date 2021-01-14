	ldr x18, [x19,x0]
	ldr x10, [x2, #130]
	cmp x19, x10
	b.eq #0xC
	ldr x9, [x18, #57]
	b #0x8
	ldr x20, [x21]
