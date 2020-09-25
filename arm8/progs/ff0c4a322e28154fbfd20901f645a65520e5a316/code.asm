	ldr x27, [x21,x18]
	ldr x1, [x24, #0]
	cmp x21, x1
	b.eq #0xC
	ldr x22, [x27, #165]
	b #0x8
	ldr x0, [x3, #16]
