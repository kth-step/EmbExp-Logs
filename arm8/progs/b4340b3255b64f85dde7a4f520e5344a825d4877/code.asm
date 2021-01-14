	ldr x28, [x23,x18]
	ldr x5, [x11, #87]
	cmp x23, x5
	b.eq #0xC
	ldr x9, [x28, #66]
	b #0x8
	ldr x21, [x22, #16]
