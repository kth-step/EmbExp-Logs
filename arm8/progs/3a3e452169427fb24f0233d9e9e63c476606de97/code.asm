	ldr x11, [x12,x3]
	ldr x19, [x22, #0]
	cmp x12, x19
	b.eq #0xC
	ldr x8, [x11, #225]
	b #0x8
	ldr x26, [x22, #4]
