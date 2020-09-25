	ldr x14, [x23,x23]
	ldr x27, [x19, #0]
	cmp x23, x27
	b.eq #0xC
	ldr x26, [x14, #113]
	b #0x8
	ldr x4, [x24, #16]
