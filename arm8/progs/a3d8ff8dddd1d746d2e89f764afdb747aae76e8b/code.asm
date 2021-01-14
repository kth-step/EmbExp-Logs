	ldr x20, [x13,x22]
	ldr x10, [x0, #49]
	cmp x13, x10
	b.eq #0xC
	ldr x10, [x20, #10]
	b #0x8
	ldr x22, [x19, #4]
