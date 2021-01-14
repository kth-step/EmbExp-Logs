	ldr x10, [x27,x29]
	ldr x6, [x22, #140]
	cmp x27, x6
	b.eq #0xC
	ldr x16, [x10, #196]
	b #0x8
	ldr x18, [x22, #16]
