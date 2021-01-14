	ldr x20, [x19,x13]
	ldr x21, [x24, #67]
	cmp x19, x21
	b.eq #0xC
	ldr x13, [x20, #68]
	b #0x8
	ldr x12, [x10, #4]
