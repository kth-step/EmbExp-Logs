	ldr x16, [x8,x19]
	ldr x9, [x14, #97]
	cmp x8, x9
	b.eq #0xC
	ldr x24, [x16, #82]
	b #0x8
	ldr x20, [x17, #16]
