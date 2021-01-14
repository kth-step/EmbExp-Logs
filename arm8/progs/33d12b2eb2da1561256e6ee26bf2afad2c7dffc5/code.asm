	ldr x27, [x14,x1]
	ldr x17, [x0, #90]
	cmp x14, x17
	b.eq #0xC
	ldr x18, [x27, #197]
	b #0x8
	ldr x23, [x22, #16]
