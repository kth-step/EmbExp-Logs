	ldr x25, [x1,x28]
	ldr x14, [x20, #0]
	cmp x1, x14
	b.eq #0xC
	ldr x8, [x25, #180]
	b #0x8
	ldr x19, [x22, #16]
