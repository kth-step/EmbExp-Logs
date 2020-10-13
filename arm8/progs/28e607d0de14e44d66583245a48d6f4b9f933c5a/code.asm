	ldr x28, [x23,x10]
	ldr x3, [x25, #0]
	cmp x23, x3
	b.eq #0xC
	ldr x15, [x28, #131]
	b #0x8
	ldr x3, [x8, #4]
