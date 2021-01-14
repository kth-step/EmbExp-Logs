	ldr x16, [x15,x6]
	ldr x22, [x12, #55]
	cmp x15, x22
	b.eq #0xC
	ldr x18, [x16, #242]
	b #0x8
	ldr x9, [x10, #4]
