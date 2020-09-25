	ldr x25, [x16,x2]
	ldr x19, [x27, #0]
	cmp x16, x19
	b.eq #0xC
	ldr x11, [x25, #81]
	b #0x8
	ldr x8, [x5, #8]
