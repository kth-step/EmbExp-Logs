	ldr x19, [x2,x6]
	ldr x28, [x5, #200]
	cmp x2, x28
	b.eq #0xC
	ldr x18, [x19, #207]
	b #0x8
	ldr x15, [x28]
