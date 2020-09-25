	ldr x28, [x14,x18]
	ldr x22, [x12, #0]
	cmp x14, x22
	b.eq #0xC
	ldr x8, [x28, #250]
	b #0x8
	ldr x20, [x6, #8]
