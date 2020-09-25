	ldr x3, [x25,x13]
	ldr x18, [x17, #0]
	cmp x25, x18
	b.eq #0xC
	ldr x25, [x3, #74]
	b #0x8
	ldr x27, [x25]
