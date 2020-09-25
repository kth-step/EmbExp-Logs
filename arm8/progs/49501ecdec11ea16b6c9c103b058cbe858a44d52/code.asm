	ldr x18, [x19,x20]
	ldr x26, [x29, #0]
	cmp x19, x26
	b.eq #0xC
	ldr x14, [x18, #170]
	b #0x8
	ldr x29, [x6, #16]
