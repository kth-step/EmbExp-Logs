	ldr x29, [x23,x26]
	ldr x17, [x15, #91]
	cmp x23, x17
	b.eq #0xC
	ldr x15, [x29, #56]
	b #0x8
	ldr x28, [x1]
