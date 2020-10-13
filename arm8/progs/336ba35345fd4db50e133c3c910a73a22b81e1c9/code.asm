	ldr x12, [x22,x27]
	ldr x2, [x7, #0]
	cmp x22, x2
	b.eq #0xC
	ldr x22, [x12, #74]
	b #0x8
	ldr x10, [x3, #8]
