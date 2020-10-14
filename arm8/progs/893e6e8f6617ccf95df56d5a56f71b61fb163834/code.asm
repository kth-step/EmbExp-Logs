	ldr x14, [x8,x18]
	ldr x1, [x22, #0]
	cmp x8, x1
	b.eq #0xC
	ldr x0, [x14, #248]
	b #0x8
	ldr x27, [x7]
