	ldr x22, [x9,x24]
	ldr x16, [x21, #0]
	cmp x9, x16
	b.eq #0xC
	ldr x7, [x22, #242]
	b #0x8
	ldr x15, [x18, #16]
