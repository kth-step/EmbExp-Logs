	ldr x15, [x1,x27]
	ldr x0, [x2, #0]
	cmp x1, x0
	b.eq #0xC
	ldr x22, [x15, #226]
	b #0x8
	ldr x18, [x27, #4]
