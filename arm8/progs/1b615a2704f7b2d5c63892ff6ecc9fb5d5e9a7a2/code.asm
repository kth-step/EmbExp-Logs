	ldr x11, [x20,x3]
	ldr x19, [x13, #0]
	cmp x20, x19
	b.eq #0xC
	ldr x25, [x11, #81]
	b #0x8
	ldr x1, [x27]
