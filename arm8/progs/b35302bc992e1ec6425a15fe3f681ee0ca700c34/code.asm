	ldr x2, [x23,x24]
	ldr x9, [x21, #82]
	cmp x23, x9
	b.eq #0xC
	ldr x27, [x2, #115]
	b #0x8
	ldr x18, [x29, #4]
