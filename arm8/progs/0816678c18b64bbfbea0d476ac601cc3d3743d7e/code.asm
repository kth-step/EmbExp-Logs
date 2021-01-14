	ldr x8, [x19,x9]
	ldr x7, [x20, #72]
	cmp x19, x7
	b.eq #0xC
	ldr x15, [x8, #74]
	b #0x8
	ldr x24, [x23]
