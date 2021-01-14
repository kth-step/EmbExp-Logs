	ldr x29, [x23,x6]
	ldr x22, [x1, #238]
	cmp x23, x22
	b.eq #0xC
	ldr x28, [x29, #20]
	b #0x8
	ldr x20, [x14]
