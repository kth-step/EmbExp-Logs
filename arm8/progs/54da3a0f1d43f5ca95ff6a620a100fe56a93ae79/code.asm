	ldr x19, [x22,x16]
	ldr x9, [x8, #0]
	cmp x22, x9
	b.eq #0xC
	ldr x8, [x19, #51]
	b #0x8
	ldr x27, [x25, #16]
