	ldr x20, [x21,x28]
	ldr x7, [x18, #224]
	cmp x21, x7
	b.eq #0xC
	ldr x2, [x20, #176]
	b #0x8
	ldr x24, [x21, #8]
