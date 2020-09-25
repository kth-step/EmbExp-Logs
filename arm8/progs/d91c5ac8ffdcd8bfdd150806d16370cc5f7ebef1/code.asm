	ldr x4, [x22,x28]
	ldr x22, [x15, #0]
	cmp x22, x22
	b.eq #0xC
	ldr x10, [x4, #33]
	b #0x8
	ldr x28, [x16, #8]
