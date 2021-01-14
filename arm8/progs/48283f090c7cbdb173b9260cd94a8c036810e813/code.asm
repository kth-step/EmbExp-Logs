	ldr x12, [x1,x8]
	ldr x0, [x15, #226]
	cmp x1, x0
	b.eq #0xC
	ldr x20, [x12, #237]
	b #0x8
	ldr x17, [x0, #8]
