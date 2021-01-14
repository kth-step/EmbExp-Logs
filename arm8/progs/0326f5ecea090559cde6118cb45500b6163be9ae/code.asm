	ldr x16, [x22,x26]
	ldr x6, [x15, #236]
	cmp x22, x6
	b.eq #0xC
	ldr x26, [x16, #139]
	b #0x8
	ldr x22, [x29]
