	ldr x23, [x28,x27]
	ldr x26, [x4, #0]
	cmp x28, x26
	b.eq #0xC
	ldr x25, [x23, #208]
	b #0x8
	ldr x8, [x2]
