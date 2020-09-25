	ldr x22, [x1,x7]
	ldr x0, [x19, #0]
	cmp x1, x0
	b.eq #0xC
	ldr x21, [x22, #28]
	b #0x8
	ldr x18, [x3, #4]
