	ldr x29, [x7,x4]
	ldr x9, [x20, #0]
	cmp x7, x9
	b.eq #0xC
	ldr x21, [x29, #81]
	b #0x8
	ldr x19, [x6, #16]
