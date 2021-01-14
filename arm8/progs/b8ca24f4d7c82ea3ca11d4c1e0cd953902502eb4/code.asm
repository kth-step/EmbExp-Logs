	ldr x17, [x1,x24]
	ldr x15, [x10, #220]
	cmp x1, x15
	b.eq #0xC
	ldr x7, [x17, #161]
	b #0x8
	ldr x20, [x9]
