	ldr x29, [x7,x24]
	ldr x20, [x18, #0]
	cmp x7, x20
	b.eq #0xC
	ldr x6, [x29, #208]
	b #0x8
	ldr x6, [x26, #16]
