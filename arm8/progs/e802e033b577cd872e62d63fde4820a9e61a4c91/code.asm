	ldr x7, [x17,x18]
	ldr x22, [x1, #55]
	cmp x17, x22
	b.eq #0xC
	ldr x6, [x7, #233]
	b #0x8
	ldr x27, [x22, #8]
