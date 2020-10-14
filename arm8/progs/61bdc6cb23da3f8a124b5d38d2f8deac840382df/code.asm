	ldr x16, [x18,x7]
	ldr x19, [x20, #0]
	cmp x18, x19
	b.eq #0xC
	ldr x26, [x16, #235]
	b #0x8
	ldr x24, [x10]
