	ldr x23, [x27,x22]
	ldr x25, [x10, #85]
	cmp x27, x25
	b.eq #0xC
	ldr x28, [x23, #164]
	b #0x8
	ldr x24, [x11, #16]
