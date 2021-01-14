	ldr x7, [x29,x22]
	ldr x5, [x27, #33]
	cmp x29, x5
	b.eq #0xC
	ldr x20, [x7, #139]
	b #0x8
	ldr x1, [x16, #4]
