	ldr x24, [x15,x2]
	ldr x20, [x18, #0]
	cmp x15, x20
	b.eq #0xC
	ldr x22, [x24, #99]
	b #0x8
	ldr x4, [x4, #16]
