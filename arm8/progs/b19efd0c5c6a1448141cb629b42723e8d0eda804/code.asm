	ldr x21, [x0,x0]
	ldr x1, [x14, #219]
	cmp x0, x1
	b.eq #0xC
	ldr x27, [x21, #202]
	b #0x8
	ldr x7, [x28]
