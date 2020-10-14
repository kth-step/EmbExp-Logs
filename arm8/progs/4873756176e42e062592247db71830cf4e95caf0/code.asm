	ldr x17, [x19,x16]
	ldr x6, [x21, #0]
	cmp x19, x6
	b.eq #0xC
	ldr x24, [x17, #55]
	b #0x8
	ldr x8, [x16, #4]
