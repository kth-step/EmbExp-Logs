	ldr x26, [x2,x24]
	ldr x10, [x2, #55]
	cmp x2, x10
	b.eq #0xC
	ldr x11, [x26, #183]
	b #0x8
	ldr x25, [x19, #8]
