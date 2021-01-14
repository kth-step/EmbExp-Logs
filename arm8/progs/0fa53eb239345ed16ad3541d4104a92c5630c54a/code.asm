	ldr x26, [x21,x19]
	ldr x2, [x5, #23]
	cmp x21, x2
	b.eq #0xC
	ldr x5, [x26, #10]
	b #0x8
	ldr x12, [x24, #4]
