	ldr x27, [x28,x19]
	ldr x0, [x20, #178]
	cmp x28, x0
	b.eq #0xC
	ldr x17, [x27, #227]
	b #0x8
	ldr x23, [x20, #16]
