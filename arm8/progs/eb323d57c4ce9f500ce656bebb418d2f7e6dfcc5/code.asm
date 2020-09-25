	ldr x15, [x3,x7]
	ldr x4, [x18, #0]
	cmp x3, x4
	b.eq #0xC
	ldr x19, [x15, #2]
	b #0x8
	ldr x8, [x22]
