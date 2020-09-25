	ldr x28, [x22,x26]
	ldr x20, [x1, #0]
	cmp x22, x20
	b.eq #0xC
	ldr x2, [x28, #224]
	b #0x8
	ldr x12, [x4, #8]
