	ldr x11, [x21,x23]
	ldr x26, [x27, #195]
	cmp x21, x26
	b.eq #0xC
	ldr x13, [x11, #99]
	b #0x8
	ldr x8, [x25]
