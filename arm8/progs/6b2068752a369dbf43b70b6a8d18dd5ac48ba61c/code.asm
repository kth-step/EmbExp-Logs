	ldr x18, [x21,x10]
	ldr x21, [x6, #60]
	cmp x21, x21
	b.eq #0xC
	ldr x19, [x18, #7]
	b #0x8
	ldr x27, [x10, #4]
