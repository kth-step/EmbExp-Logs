	ldr x9, [x14,x25]
	ldr x19, [x23, #72]
	cmp x14, x19
	b.eq #0xC
	ldr x19, [x9, #158]
	b #0x8
	ldr x28, [x14]
