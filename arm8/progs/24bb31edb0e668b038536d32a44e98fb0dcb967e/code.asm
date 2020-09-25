	ldr x27, [x1,x18]
	ldr x22, [x4, #0]
	cmp x1, x22
	b.eq #0xC
	ldr x0, [x27, #217]
	b #0x8
	ldr x28, [x25, #4]
