	ldr x8, [x3,x27]
	ldr x2, [x7, #25]
	cmp x3, x2
	b.eq #0xC
	ldr x0, [x8, #42]
	b #0x8
	ldr x20, [x19, #8]
