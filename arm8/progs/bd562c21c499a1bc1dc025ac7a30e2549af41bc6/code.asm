	ldr x7, [x23,x10]
	ldr x19, [x15, #0]
	cmp x23, x19
	b.eq #0xC
	ldr x16, [x7, #249]
	b #0x8
	ldr x28, [x25, #4]
