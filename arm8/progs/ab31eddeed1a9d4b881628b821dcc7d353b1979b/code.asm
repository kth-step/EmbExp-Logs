	ldr x8, [x20,x15]
	ldr x17, [x12, #224]
	cmp x20, x17
	b.eq #0xC
	ldr x9, [x8, #94]
	b #0x8
	ldr x14, [x0, #16]
