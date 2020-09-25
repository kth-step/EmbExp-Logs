	ldr x18, [x27,x23]
	ldr x0, [x25, #0]
	cmp x27, x0
	b.eq #0xC
	ldr x25, [x18, #222]
	b #0x8
	ldr x23, [x16]
