	ldr x10, [x21,x17]
	ldr x3, [x29, #71]
	cmp x21, x3
	b.eq #0xC
	ldr x19, [x10, #2]
	b #0x8
	ldr x8, [x24, #4]
