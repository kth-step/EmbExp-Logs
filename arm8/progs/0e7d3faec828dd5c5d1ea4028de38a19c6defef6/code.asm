	ldr x15, [x21,x10]
	ldr x16, [x3, #0]
	cmp x21, x16
	b.eq #0xC
	ldr x25, [x15, #20]
	b #0x8
	ldr x19, [x16, #16]
