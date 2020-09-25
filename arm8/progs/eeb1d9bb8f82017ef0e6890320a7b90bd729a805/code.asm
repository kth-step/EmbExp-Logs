	ldr x8, [x21,x28]
	ldr x19, [x17, #0]
	cmp x21, x19
	b.eq #0xC
	ldr x10, [x8, #29]
	b #0x8
	ldr x21, [x24, #16]
