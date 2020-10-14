	ldr x17, [x21,x27]
	ldr x26, [x23, #0]
	cmp x21, x26
	b.eq #0xC
	ldr x12, [x17, #90]
	b #0x8
	ldr x24, [x5]
