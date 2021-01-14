	ldr x22, [x27,x19]
	ldr x7, [x28, #109]
	cmp x27, x7
	b.eq #0xC
	ldr x4, [x22, #138]
	b #0x8
	ldr x13, [x7, #4]
