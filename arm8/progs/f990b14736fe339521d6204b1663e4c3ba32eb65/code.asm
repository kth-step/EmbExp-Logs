	ldr x12, [x18,x11]
	ldr x23, [x27, #150]
	cmp x18, x23
	b.eq #0xC
	ldr x11, [x12, #82]
	b #0x8
	ldr x9, [x1, #16]
