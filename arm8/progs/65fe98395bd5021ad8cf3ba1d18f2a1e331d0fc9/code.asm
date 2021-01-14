	ldr x2, [x25,x26]
	ldr x8, [x9, #73]
	cmp x25, x8
	b.eq #0xC
	ldr x12, [x2, #139]
	b #0x8
	ldr x25, [x22, #8]
