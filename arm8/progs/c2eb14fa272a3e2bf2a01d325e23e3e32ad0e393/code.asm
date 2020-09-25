	ldr x3, [x1,x5]
	ldr x28, [x4, #0]
	cmp x1, x28
	b.eq #0xC
	ldr x22, [x3, #89]
	b #0x8
	ldr x12, [x14, #4]
