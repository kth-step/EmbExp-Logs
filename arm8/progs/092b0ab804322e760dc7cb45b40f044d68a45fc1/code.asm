	ldr x19, [x14,x23]
	ldr x3, [x23, #191]
	cmp x14, x3
	b.eq #0xC
	ldr x7, [x19, #241]
	b #0x8
	ldr x4, [x29, #8]
