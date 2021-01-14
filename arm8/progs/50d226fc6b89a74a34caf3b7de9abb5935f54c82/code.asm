	ldr x24, [x14,x4]
	ldr x12, [x4, #150]
	cmp x14, x12
	b.eq #0xC
	ldr x28, [x24, #113]
	b #0x8
	ldr x18, [x7]
