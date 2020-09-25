	ldr x21, [x19,x24]
	ldr x28, [x4, #0]
	cmp x19, x28
	b.eq #0xC
	ldr x3, [x21, #167]
	b #0x8
	ldr x15, [x4, #8]
