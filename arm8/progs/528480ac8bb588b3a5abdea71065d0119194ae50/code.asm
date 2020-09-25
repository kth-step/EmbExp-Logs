	ldr x4, [x11,x12]
	ldr x22, [x28, #0]
	cmp x11, x22
	b.eq #0xC
	ldr x5, [x4, #140]
	b #0x8
	ldr x28, [x16]
