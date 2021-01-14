	ldr x29, [x20,x6]
	ldr x3, [x27, #55]
	cmp x20, x3
	b.eq #0xC
	ldr x3, [x29, #99]
	b #0x8
	ldr x27, [x13, #16]
