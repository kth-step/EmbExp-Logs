	ldr x10, [x19,x9]
	ldr x26, [x4, #0]
	cmp x19, x26
	b.eq #0xC
	ldr x12, [x10, #241]
	b #0x8
	ldr x17, [x10, #4]
