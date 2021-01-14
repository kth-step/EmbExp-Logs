	ldr x8, [x25,x29]
	ldr x26, [x25, #221]
	cmp x25, x26
	b.eq #0xC
	ldr x28, [x8, #55]
	b #0x8
	ldr x26, [x7, #8]
