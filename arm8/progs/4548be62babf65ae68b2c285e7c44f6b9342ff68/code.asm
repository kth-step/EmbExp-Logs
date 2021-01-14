	ldr x19, [x23,x25]
	ldr x24, [x26, #99]
	cmp x23, x24
	b.eq #0xC
	ldr x23, [x19, #209]
	b #0x8
	ldr x0, [x14]
