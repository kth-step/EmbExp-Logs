	ldr x22, [x8,x16]
	ldr x1, [x11, #99]
	cmp x8, x1
	b.eq #0xC
	ldr x27, [x22, #12]
	b #0x8
	ldr x17, [x8, #16]
