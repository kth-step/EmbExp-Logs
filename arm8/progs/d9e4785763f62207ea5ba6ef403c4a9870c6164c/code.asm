	ldr x29, [x4,x16]
	ldr x28, [x7, #0]
	cmp x4, x28
	b.eq #0xC
	ldr x20, [x29, #207]
	b #0x8
	ldr x19, [x13]
