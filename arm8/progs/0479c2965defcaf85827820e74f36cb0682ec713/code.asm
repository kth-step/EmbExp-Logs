	ldr x21, [x1,x28]
	ldr x1, [x5, #0]
	cmp x1, x1
	b.eq #0xC
	ldr x27, [x21, #209]
	b #0x8
	ldr x24, [x23]
