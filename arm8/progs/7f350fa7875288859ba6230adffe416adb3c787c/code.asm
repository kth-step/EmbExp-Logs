	ldr x4, [x29,x23]
	ldr x25, [x22, #0]
	cmp x29, x25
	b.eq #0xC
	ldr x15, [x4, #208]
	b #0x8
	ldr x29, [x22]
