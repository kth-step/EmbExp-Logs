	ldr x4, [x27,x8]
	ldr x14, [x25, #20]
	cmp x27, x14
	b.eq #0xC
	ldr x19, [x4, #176]
	b #0x8
	ldr x9, [x20, #4]
