	ldr x22, [x7,x10]
	ldr x27, [x16, #174]
	cmp x7, x27
	b.eq #0xC
	ldr x28, [x22, #221]
	b #0x8
	ldr x1, [x10, #4]
