	ldr x7, [x28,x14]
	ldr x26, [x24, #0]
	cmp x28, x26
	b.eq #0xC
	ldr x12, [x7, #238]
	b #0x8
	ldr x10, [x22, #4]
