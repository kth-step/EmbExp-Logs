	ldr x12, [x25,x1]
	ldr x24, [x5, #188]
	cmp x25, x24
	b.eq #0xC
	ldr x29, [x12, #150]
	b #0x8
	ldr x7, [x12, #8]
