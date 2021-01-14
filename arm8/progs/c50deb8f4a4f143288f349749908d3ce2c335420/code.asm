	ldr x26, [x12,x28]
	ldr x22, [x3, #56]
	cmp x12, x22
	b.eq #0xC
	ldr x28, [x26, #240]
	b #0x8
	ldr x24, [x17, #4]
