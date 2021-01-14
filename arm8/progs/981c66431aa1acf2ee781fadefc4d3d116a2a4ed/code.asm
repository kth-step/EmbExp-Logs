	ldr x15, [x4,x13]
	ldr x28, [x24, #77]
	cmp x4, x28
	b.eq #0xC
	ldr x29, [x15, #253]
	b #0x8
	ldr x15, [x12, #8]
