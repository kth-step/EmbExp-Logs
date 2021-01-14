	ldr x22, [x8,x2]
	ldr x25, [x21, #14]
	cmp x8, x25
	b.eq #0xC
	ldr x23, [x22, #66]
	b #0x8
	ldr x27, [x4]
