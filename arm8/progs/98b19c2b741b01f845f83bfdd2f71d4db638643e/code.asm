	ldr x29, [x26,x27]
	ldr x12, [x0, #207]
	cmp x26, x12
	b.eq #0xC
	ldr x7, [x29, #95]
	b #0x8
	ldr x26, [x25, #16]
