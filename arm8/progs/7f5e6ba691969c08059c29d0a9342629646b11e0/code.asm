	ldr x12, [x8,x10]
	ldr x11, [x18, #9]
	cmp x8, x11
	b.eq #0xC
	ldr x18, [x12, #39]
	b #0x8
	ldr x8, [x17]
