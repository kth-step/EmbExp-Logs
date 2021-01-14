	ldr x12, [x13,x27]
	ldr x10, [x13, #251]
	cmp x13, x10
	b.eq #0xC
	ldr x17, [x12, #101]
	b #0x8
	ldr x1, [x28, #4]
