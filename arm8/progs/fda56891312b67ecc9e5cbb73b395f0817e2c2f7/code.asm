	ldr x26, [x16,x23]
	ldr x18, [x5, #224]
	cmp x16, x18
	b.eq #0xC
	ldr x21, [x26, #245]
	b #0x8
	ldr x22, [x3, #16]
