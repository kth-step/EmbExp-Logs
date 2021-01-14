	ldr x23, [x7,x25]
	ldr x10, [x14, #207]
	cmp x7, x10
	b.eq #0xC
	ldr x29, [x23, #139]
	b #0x8
	ldr x24, [x19, #8]
