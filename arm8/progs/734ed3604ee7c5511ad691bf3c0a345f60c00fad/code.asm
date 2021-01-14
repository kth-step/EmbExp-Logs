	ldr x14, [x23,x6]
	ldr x3, [x24, #223]
	cmp x23, x3
	b.eq #0xC
	ldr x7, [x14, #59]
	b #0x8
	ldr x22, [x18]
