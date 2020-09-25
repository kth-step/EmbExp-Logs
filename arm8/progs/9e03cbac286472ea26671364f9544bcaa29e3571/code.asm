	ldr x8, [x19,x18]
	ldr x22, [x15, #0]
	cmp x19, x22
	b.eq #0xC
	ldr x18, [x8, #245]
	b #0x8
	ldr x17, [x21, #4]
