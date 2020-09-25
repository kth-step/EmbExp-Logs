	ldr x15, [x9,x18]
	ldr x26, [x14, #0]
	cmp x9, x26
	b.eq #0xC
	ldr x26, [x15, #183]
	b #0x8
	ldr x19, [x21, #8]
