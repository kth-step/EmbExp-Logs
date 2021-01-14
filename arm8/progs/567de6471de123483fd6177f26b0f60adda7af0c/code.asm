	ldr x12, [x2,x0]
	ldr x1, [x24, #115]
	cmp x2, x1
	b.eq #0xC
	ldr x10, [x12, #103]
	b #0x8
	ldr x25, [x18, #16]
