	ldr x19, [x7,x3]
	ldr x20, [x12, #0]
	cmp x7, x20
	b.eq #0xC
	ldr x6, [x19, #236]
	b #0x8
	ldr x7, [x24, #4]
