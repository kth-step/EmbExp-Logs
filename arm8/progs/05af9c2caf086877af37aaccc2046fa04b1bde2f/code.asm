	ldr x24, [x6,x19]
	ldr x16, [x19, #233]
	cmp x6, x16
	b.eq #0xC
	ldr x23, [x24, #202]
	b #0x8
	ldr x20, [x28, #8]
