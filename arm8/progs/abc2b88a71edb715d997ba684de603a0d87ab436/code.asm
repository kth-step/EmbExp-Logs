	ldr x18, [x15,x6]
	ldr x2, [x29, #23]
	cmp x15, x2
	b.eq #0xC
	ldr x11, [x18, #224]
	b #0x8
	ldr x14, [x19, #16]
