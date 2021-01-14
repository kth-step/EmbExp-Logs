	ldr x18, [x20,x27]
	ldr x1, [x7, #224]
	cmp x20, x1
	b.eq #0xC
	ldr x26, [x18, #49]
	b #0x8
	ldr x18, [x11, #16]
