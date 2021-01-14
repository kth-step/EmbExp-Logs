	ldr x27, [x29,x6]
	ldr x12, [x6, #237]
	cmp x29, x12
	b.eq #0xC
	ldr x25, [x27, #66]
	b #0x8
	ldr x11, [x2, #4]
