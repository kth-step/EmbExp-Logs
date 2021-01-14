	ldr x28, [x11,x1]
	ldr x26, [x9, #223]
	cmp x11, x26
	b.eq #0xC
	ldr x10, [x28, #100]
	b #0x8
	ldr x12, [x22]
