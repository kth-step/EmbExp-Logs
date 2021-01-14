	ldr x24, [x19,x1]
	ldr x28, [x4, #91]
	cmp x19, x28
	b.eq #0xC
	ldr x11, [x24, #224]
	b #0x8
	ldr x22, [x10, #4]
