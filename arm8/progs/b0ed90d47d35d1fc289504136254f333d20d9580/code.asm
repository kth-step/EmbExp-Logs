	ldr x10, [x4,x18]
	ldr x17, [x24, #0]
	cmp x4, x17
	b.eq #0xC
	ldr x21, [x10, #180]
	b #0x8
	ldr x10, [x5, #16]
