	ldr x18, [x7,x0]
	ldr x8, [x12, #0]
	cmp x7, x8
	b.eq #0xC
	ldr x4, [x18, #237]
	b #0x8
	ldr x28, [x25]
