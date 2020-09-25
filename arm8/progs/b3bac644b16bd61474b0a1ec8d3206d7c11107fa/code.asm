	ldr x8, [x4,x15]
	ldr x19, [x25, #0]
	cmp x4, x19
	b.eq #0xC
	ldr x4, [x8, #176]
	b #0x8
	ldr x17, [x28]
