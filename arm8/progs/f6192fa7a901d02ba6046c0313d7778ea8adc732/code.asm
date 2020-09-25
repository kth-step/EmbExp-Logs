	ldr x14, [x27,x26]
	ldr x12, [x14, #0]
	cmp x27, x12
	b.eq #0xC
	ldr x0, [x14, #113]
	b #0x8
	ldr x15, [x19]
