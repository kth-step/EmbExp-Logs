	ldr x10, [x19,x3]
	ldr x23, [x3, #39]
	cmp x19, x23
	b.eq #0xC
	ldr x5, [x10, #251]
	b #0x8
	ldr x4, [x27]
