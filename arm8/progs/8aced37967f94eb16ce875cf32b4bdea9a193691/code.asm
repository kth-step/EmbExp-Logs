	ldr x20, [x19,x4]
	ldr x21, [x26, #0]
	cmp x19, x21
	b.eq #0xC
	ldr x14, [x20, #21]
	b #0x8
	ldr x28, [x23]
