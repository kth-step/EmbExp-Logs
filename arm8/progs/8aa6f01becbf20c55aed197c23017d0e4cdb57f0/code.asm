	ldr x2, [x15,x14]
	ldr x24, [x17, #102]
	cmp x15, x24
	b.eq #0xC
	ldr x10, [x2, #213]
	b #0x8
	ldr x7, [x13, #4]
