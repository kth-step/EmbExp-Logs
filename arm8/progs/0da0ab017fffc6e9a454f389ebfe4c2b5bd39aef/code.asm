	ldr x19, [x23,x11]
	ldr x21, [x27, #0]
	cmp x23, x21
	b.eq #0xC
	ldr x6, [x19, #73]
	b #0x8
	ldr x18, [x0]
