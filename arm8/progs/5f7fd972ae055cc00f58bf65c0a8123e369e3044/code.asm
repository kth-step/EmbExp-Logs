	ldr x22, [x21,x1]
	ldr x0, [x25, #254]
	cmp x21, x0
	b.eq #0xC
	ldr x10, [x22, #238]
	b #0x8
	ldr x4, [x25, #4]
