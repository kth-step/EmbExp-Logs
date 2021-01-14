	ldr x26, [x14,x25]
	ldr x3, [x12, #237]
	cmp x14, x3
	b.eq #0xC
	ldr x7, [x26, #221]
	b #0x8
	ldr x21, [x8, #16]
