	ldr x20, [x8,x19]
	ldr x26, [x11, #23]
	cmp x8, x26
	b.eq #0xC
	ldr x23, [x20, #246]
	b #0x8
	ldr x26, [x27]
