	ldr x19, [x14,x18]
	ldr x28, [x23, #71]
	cmp x14, x28
	b.eq #0xC
	ldr x5, [x19, #99]
	b #0x8
	ldr x16, [x25, #4]
