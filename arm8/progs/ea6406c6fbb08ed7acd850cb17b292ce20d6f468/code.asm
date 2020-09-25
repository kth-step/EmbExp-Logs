	ldr x22, [x23,x24]
	ldr x18, [x19, #0]
	cmp x23, x18
	b.eq #0xC
	ldr x26, [x22, #142]
	b #0x8
	ldr x10, [x2, #16]
