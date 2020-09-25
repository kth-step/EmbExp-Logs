	ldr x25, [x18,x9]
	ldr x24, [x23, #0]
	cmp x18, x24
	b.eq #0xC
	ldr x12, [x25, #124]
	b #0x8
	ldr x10, [x23, #16]
