	ldr x25, [x2,x6]
	ldr x19, [x27, #216]
	cmp x2, x19
	b.eq #0xC
	ldr x18, [x25, #182]
	b #0x8
	ldr x1, [x24, #8]
