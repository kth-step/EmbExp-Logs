	ldr x22, [x23,x21]
	ldr x1, [x7, #157]
	cmp x23, x1
	b.eq #0xC
	ldr x3, [x22, #111]
	b #0x8
	ldr x14, [x25, #4]
