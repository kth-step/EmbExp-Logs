	ldr x22, [x1,x16]
	ldr x20, [x22, #0]
	cmp x1, x20
	b.eq #0xC
	ldr x6, [x22, #136]
	b #0x8
	ldr x24, [x27]
