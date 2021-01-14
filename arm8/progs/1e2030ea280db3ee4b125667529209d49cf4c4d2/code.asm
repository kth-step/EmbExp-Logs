	ldr x18, [x26,x10]
	ldr x11, [x10, #146]
	cmp x26, x11
	b.eq #0xC
	ldr x11, [x18, #163]
	b #0x8
	ldr x23, [x26, #16]
