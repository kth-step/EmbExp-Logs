	ldr x18, [x14,x20]
	ldr x6, [x19, #40]
	cmp x14, x6
	b.eq #0xC
	ldr x23, [x18, #197]
	b #0x8
	ldr x6, [x0]
