	ldr x11, [x1,x26]
	ldr x25, [x11, #217]
	cmp x1, x25
	b.eq #0xC
	ldr x26, [x11, #224]
	b #0x8
	ldr x24, [x20, #4]
