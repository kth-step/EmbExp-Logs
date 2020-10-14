	ldr x24, [x1,x23]
	ldr x18, [x8, #0]
	cmp x1, x18
	b.eq #0xC
	ldr x18, [x24, #140]
	b #0x8
	ldr x17, [x19, #4]
