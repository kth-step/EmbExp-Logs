	ldr x8, [x19,x1]
	ldr x14, [x6, #0]
	cmp x19, x14
	b.eq #0xC
	ldr x19, [x8, #131]
	b #0x8
	ldr x6, [x14, #4]
