	ldr x10, [x9,x5]
	ldr x12, [x5, #68]
	cmp x9, x12
	b.eq #0xC
	ldr x5, [x10, #55]
	b #0x8
	ldr x18, [x24, #16]
