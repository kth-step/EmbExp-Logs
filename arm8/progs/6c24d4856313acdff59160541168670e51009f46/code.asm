	ldr x14, [x18,x0]
	ldr x4, [x15, #212]
	cmp x18, x4
	b.eq #0xC
	ldr x18, [x14, #176]
	b #0x8
	ldr x7, [x29, #16]
