	ldr x15, [x21,x29]
	ldr x10, [x5, #0]
	cmp x21, x10
	b.eq #0xC
	ldr x19, [x15, #74]
	b #0x8
	ldr x18, [x6, #8]
